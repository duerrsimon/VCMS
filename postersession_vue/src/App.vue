<template>
  <div id="app">
    <notifications group="foo" classes='m-4 vue-notification' position='bottom right' />
    <div class="bg-gray-200 pt-8">
      <div class=" mx-auto sm:px-6 lg:px-8 flex flex-no-wrap align-top" :class="{'max-w-7xl':$route.name!='single'}">
        <div class="mx-auto" :class="{'container':$route.name!='single'}">
          <div class="sm:pb-4">
            <div class="sm:mb-2 mx-1 px-4 md:px-0 flex sm:flex-row flex-col h-auto sm:h-10" v-if="$route.name!='single'">
              <div class="flex flex-row  sm:mb-0 flex-inital">
                <div class="relative w-1/3">
                  <select v-model="perPage"
                    class="appearance-none  h-full rounded-l border block w-full bg-white border-gray-400 text-gray-700 py-2 px-4 pr-8 leading-tight focus:bg-white focus:border-gray-500">
                    <option v-for="value in [5,10,25,50]" :value="value">{{value}}</option>
                  </select>
                  <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
                    <svg class="fill-current h-4 w-4" viewBox="0 0 20 20">
                      <path d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z" />
                    </svg>
                  </div>
                </div>
                <div class="relative w-2/3  md:w-full">
                  <span class="h-full absolute inset-y-0 left-0 flex items-center pl-2">
                    <svg viewBox="0 0 24 24" class="h-4 w-4 fill-current text-gray-500">
                      <path
                        d="M10 4a6 6 0 100 12 6 6 0 000-12zm-8 6a8 8 0 1114.32 4.906l5.387 5.387a1 1 0 01-1.414 1.414l-5.387-5.387A8 8 0 012 10z">
                      </path>
                    </svg>
                  </span>
                  <input placeholder="Search" v-model="q"
                    class=" h-full appearance-none border border-gray-400 border-b block pl-8 pr-6 py-2  w-full bg-white text-base placeholder-gray-400 text-gray-700 focus:bg-white focus:placeholder-gray-600 focus:text-gray-700 focus:outline-none" />
                </div>
              </div>
              <div class="block relative  my-2 sm:my-0 w-full  md:w-6/12">
                <multiselect v-model="tags" placeholder="Select tags" label="name" track-by="name" :options="tagOptions"
                  :multiple="true" :taggable="false" :limit="3"></multiselect>
              </div>
              <div class="relative w-full sm:w-2/12">
                <button
                  class="w-full  h-full sm:w-auto mx-0 sm:mx-2  inline-block focus:outline-none bg-white border border-gray-400 text-gray-700 focus:bg-white focus:placeholder-gray-600 focus:text-gray-700 focus:outline-none py-2 px-5 leading-tight  rounded  text-center  font-medium"
                  @click="shufflePosters()">
                  <svg class="w-4 h-4 inline-block" fill="none" stroke-linecap="round" stroke-linejoin="round"
                    stroke-width="2" stroke="currentColor" viewBox="0 0 24 24">
                    <path d="M8 7h12m0 0l-4-4m4 4l-4 4m0 6H4m0 0l4 4m-4-4l4-4"></path>
                  </svg> Shuffle</button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div v-show="loading" class="bg-gray-200">
      <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
        style="margin: auto; display: block; shape-rendering: auto;" width="200px"
        height="200px" viewBox="0 0 100 100" preserveAspectRatio="xMidYMid">
        <circle cx="50" cy="50" r="4.13664" fill="none" stroke="#1573b3" stroke-width="6">
          <animate attributeName="r" repeatCount="indefinite" dur="1s" values="0;40" keyTimes="0;1"
            keySplines="0 0.2 0.8 1" calcMode="spline" begin="-0.5s"></animate>
          <animate attributeName="opacity" repeatCount="indefinite" dur="1s" values="1;0" keyTimes="0;1"
            keySplines="0.2 0 0.8 1" calcMode="spline" begin="-0.5s"></animate>
        </circle>
        <circle cx="50" cy="50" r="27.2969" fill="none" stroke="#dce4eb" stroke-width="6">
          <animate attributeName="r" repeatCount="indefinite" dur="1s" values="0;40" keyTimes="0;1"
            keySplines="0 0.2 0.8 1" calcMode="spline"></animate>
          <animate attributeName="opacity" repeatCount="indefinite" dur="1s" values="1;0" keyTimes="0;1"
            keySplines="0.2 0 0.8 1" calcMode="spline"></animate>
        </circle>
      </svg>
    </div>

    <router-view 
    :displayedPosters="displayedPosters"
    :checkedTags="checkedTags" 
    :uid="userid" 
    :httpUrl="httpUrl"
    :votedPosters="votedPosters"
    :voting="voting"
    >
    </router-view>


    <div class="bg-gray-200 pb-8" v-if="$route.name!='single'">
      <div class="max-w-7xl mx-auto py-6 sm:px-6 lg:px-8 flex flex-no-wrap align-top">
        <div class="container mx-auto">
          <div class="py-8">
            <div class="sm:-mx-8 px-4 sm:px-8 py-4">
              <div class="inline-block min-w-full shadow rounded-lg overflow-hidden">
                <div v-show="displayedPosters.length===0 && loading==false"
                  class="px-5 py-5 bg-white border flex flex-col xs:flex-row items-center xs:justify-between">
                  <span>No results for your query.</span>
                </div>
                <div v-show="displayedPosters.length>0"
                  class="px-5 py-5 bg-white border flex flex-col xs:flex-row items-center xs:justify-between">
                  <span class="text-xs xs:text-sm text-gray-900">
                    Showing {{(page-1)*perPage+1}} to {{(page-1)*perPage+displayedPosters.length}} of
                    {{filteredPosters.length}} Entries
                  </span>
                  <nav aria-label="Pagination" class="mt-4">
                    <t-pagination :total-items="filteredPosters.length" :per-page="perPage" :limit="limit"
                      :disabled="false" v-model="page" wrapper-class="flex w-full justify-between border-0"
                      item-class="border-none  hover:text-gray-200"
                      button-class="font-bold mx-1 px-3 py-2 bg-gray-200 text-gray-700 hover:bg-gray-700 hover:text-gray-200 rounded-lg"
                      active-button-class="bg-gray-600 text-cool-gray-200 hover:bg-gray-700 hover:text-gray-200" />
                  </nav>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>

import PosterList from './poster-list.vue'

//import VueTaggableSelect from "vue-taggable-select";
//import vueUrlParameters from 'vue-url-parameters';
import axios from 'axios';
import Vue2Filters from 'vue2-filters'
import shuffle from 'lodash/shuffle';

import Multiselect from 'vue-multiselect'


export default {
  name: "app",
  mixins: [ Vue2Filters.mixin],
  data() {
    return {
      posters: [],
      tagOptions: [],
      userid: null,
      votedPosters: null,
      page: 1,
      limit: 5,
      perPage: isNaN(parseInt(this.$route.query.limit)) ? 10 : parseInt(this.$route.query.limit),
      pages: [],
      info: null,
      tags: [],
      tagSelectKey: 0,
      loading: true,
      q: ""
      // q: this.$route.query.q,
    };
  },
  methods: {
    params() {
      if (this.q == null) {
        this.q = "";
      }
      if (this.limit == null) {
        this.limit = 10;
      }
      if (this.checkedTags == null) {
        this.checkedTags = [];
      }
      this.$router.replace({
        query: {
          q: this.q,
          tags: this.checkedTags,
          limit: this.perPage
        }
      })

    },
    getparams() {
      var queryTags = [];
      if (this.$route.query.tags != null) {
        queryTags = this.$route.query.tags;
      }
      return this.tagOptions.filter(tag =>
        queryTags.includes(tag.id.toString())
      );

    },
    shufflePosters() {
      this.posters = shuffle(this.posters);
    },
    getPosts() {
      var that = this;
      axios.get(this.httpUrl + 'json/poster/').then(function (response) {
        that.posters = response.data;
        that.loading = false;
      });
      this.tags = this.getparams();

    },
    getTags() {
      var that = this;
      axios.get(that.httpUrl + 'json/tags/').then(response => (that.tagOptions = response.data))
    },
    setPages() {
      let numberOfPages = Math.ceil(this.posters.length / this.perPage);
      for (let index = 1; index <= numberOfPages; index++) {
        this.pages.push(index);
      }
    },
    paginate(posters) {
      let page = this.page;
      let perPage = this.perPage;
      let from = (page * perPage) - perPage;
      let to = (page * perPage);
      let slicedPosters = posters.slice(from, to);
      return slicedPosters
    }
  },
  computed: {
    checkedTags() {
      return this.tags.map(tag => tag.id);
    },
    displayedPosters() {
      let paginated = this.paginate(this.filteredPosters);
      while (paginated.length == 0 && this.page > 1) {
        this.page--;
        paginated = this.paginate(this.filteredPosters);
      }
      return paginated;
    },
    tagFilteredPosters: function () {
      if (this.checkedTags.length > 0) {
        return this.posters.filter(post =>
          post.tags.some(tag =>
            this.checkedTags.includes(tag.id)
          )
        );
      } else {
        return this.posters;
      }
    },
    filteredPosters() {
      let modifiedSearchString = this.q.replace("#", "");
      let filteredPosters = this.filterBy(this.tagFilteredPosters, modifiedSearchString)
      this.$store.state.displayedPosters = filteredPosters;
      return filteredPosters
    },
  },
  watch: {
    q() {
      this.params()
    },
    checkedTags() {
      this.params()
    },
    perPage() {
      this.params()
    },
    posts() {
      this.setPages();
    }
  },
  created() {
    this.userid = document.querySelector("input[name=uid]").value;
    this.httpUrl = document.querySelector("input[name=httpUrl]").value;
    this.votedPosters = document.querySelector("input[name=votedPosters]").value.split("|");
    this.voting = parseInt(document.querySelector("input[name=voting]").value);
    this.getPosts();
    this.getTags();
  },
  filters: {
    trimWords(value) {
      return value.split(" ").splice(0, 100).join(" ") + '...';
    }
  },
  components: {
    PosterList,
    Multiselect
  }
};
</script>


<style src="../css/vue-multiselect.min.css"></style>

