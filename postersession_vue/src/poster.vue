<template>
  <div id="app">
      <div class="mx-1 sm:-mx-8 px-4 sm:px-8 py-4 ">
          <div class="inline-block w-full shadow rounded-lg overflow-hidden">
              <div class="bg-white border flex flex-wrap xs:justify-between relative">
                  <span class="text-base text-gray-600 absolute top-2 right-2 font-bold"> #{{poster.id}}</span>
                  <div class="w-full sm:w-1/2  relative">
                      <a @click="showPoster(poster)"
                          class="absolute cursor-pointer w-full h-full opacity-0 fd-sh flex  hover:opacity-100 bg-gray-transparent items-center justify-center content-center">
                          <img :src="httpUrl+'site/templates/img/enlarge.svg'" class="w-12 h-12" alt="">
                      </a>
                      <img v-lazy="poster.img" :alt="poster.title" class="w-full mt-4 sm:mt-0 px-5 py-5 h-auto">
                  </div>
                  <div class="w-full sm:w-1/2 px-5 py-5 border-gray-300 border-l">
                      <h2 class="font-bold text-cool-gray-700 text-xl">
                          {{poster.title}}
                      </h2>
                      <div class="text-base mt-2 flex flex-wrap flex-grow-0">
                          <div v-for="(author,index) in poster.authors" class="relative " ref="poster">
                              <div>
                                  <div>
                                      <button @click="author.open = !author.open"
                                          class="text-cool-gray-600 rounded-full hover:text-cool-gray-700 focus:outline-none focus:text-cool-gray-700"
                                          aria-label="Notifications" aria-haspopup="true"
                                          v-bind:class="{'underline' : author.presenting}"
                                          v-bind:aria-expanded="author.open">{{author.fullname}}
                                      </button>
                                      <span class="-ml-1" v-show="index+1!=poster.authors.length">,</span>&nbsp;
                                  </div>
                                  <div v-show="author.open"
                                      class="origin-top-left absolute left-0 mt-2 w-64 rounded-md shadow-xl">
                                      <div class="p-4 rounded-md bg-cool-gray-50 border border-cool-gray-200 shadow-xs">
                                          <div class="flex content-center items-center" v-show="author.orcid!=''">
                                              <img :src="httpUrl+'site/templates/img/orcid.svg'" class="h-4 w-4 mr-2"
                                                  alt="ORCID icon">
                                              <a :href="'https://orcid.org/'+author.orcid" target="_blank"
                                                  class="flex-1">{{author.orcid}}</a>
                                          </div>
                                          <div class="flex content-center items-center" v-show="author.hyperlink!=''">
                                              <svg class="w-4 h-4 mr-2 stroke-current text-cool-gray-500 fill-current"
                                                  viewBox="0 0 20 20">
                                                  <path fill="none"
                                                      d="M10,2.531c-4.125,0-7.469,3.344-7.469,7.469c0,4.125,3.344,7.469,7.469,7.469c4.125,0,7.469-3.344,7.469-7.469C17.469,5.875,14.125,2.531,10,2.531 M10,3.776c1.48,0,2.84,0.519,3.908,1.384c-1.009,0.811-2.111,1.512-3.298,2.066C9.914,6.072,9.077,5.017,8.14,4.059C8.728,3.876,9.352,3.776,10,3.776 M6.903,4.606c0.962,0.93,1.82,1.969,2.53,3.112C7.707,8.364,5.849,8.734,3.902,8.75C4.264,6.976,5.382,5.481,6.903,4.606 M3.776,10c2.219,0,4.338-0.418,6.29-1.175c0.209,0.404,0.405,0.813,0.579,1.236c-2.147,0.805-3.953,2.294-5.177,4.195C4.421,13.143,3.776,11.648,3.776,10 M10,16.224c-1.337,0-2.572-0.426-3.586-1.143c1.079-1.748,2.709-3.119,4.659-3.853c0.483,1.488,0.755,3.071,0.784,4.714C11.271,16.125,10.646,16.224,10,16.224 M13.075,15.407c-0.072-1.577-0.342-3.103-0.806-4.542c0.673-0.154,1.369-0.243,2.087-0.243c0.621,0,1.22,0.085,1.807,0.203C15.902,12.791,14.728,14.465,13.075,15.407 M14.356,9.378c-0.868,0-1.708,0.116-2.515,0.313c-0.188-0.464-0.396-0.917-0.621-1.359c1.294-0.612,2.492-1.387,3.587-2.284c0.798,0.97,1.302,2.187,1.395,3.517C15.602,9.455,14.99,9.378,14.356,9.378">
                                                  </path>
                                              </svg>
                                              <a :href="author.hyperlink" target="_blank" class="flex-1">Website</a>
                                          </div>
                                          <div class="flex content-center items-center" v-show="author.twitter!=''">
                                              <svg class="w-4 h-4 mr-2 stroke-current text-blue-500 fill-current"
                                                  viewBox="0 0 20 20">
                                                  <path
                                                      d="M18.258,3.266c-0.693,0.405-1.46,0.698-2.277,0.857c-0.653-0.686-1.586-1.115-2.618-1.115c-1.98,0-3.586,1.581-3.586,3.53c0,0.276,0.031,0.545,0.092,0.805C6.888,7.195,4.245,5.79,2.476,3.654C2.167,4.176,1.99,4.781,1.99,5.429c0,1.224,0.633,2.305,1.596,2.938C2.999,8.349,2.445,8.19,1.961,7.925C1.96,7.94,1.96,7.954,1.96,7.97c0,1.71,1.237,3.138,2.877,3.462c-0.301,0.08-0.617,0.123-0.945,0.123c-0.23,0-0.456-0.021-0.674-0.062c0.456,1.402,1.781,2.422,3.35,2.451c-1.228,0.947-2.773,1.512-4.454,1.512c-0.291,0-0.575-0.016-0.855-0.049c1.588,1,3.473,1.586,5.498,1.586c6.598,0,10.205-5.379,10.205-10.045c0-0.153-0.003-0.305-0.01-0.456c0.7-0.499,1.308-1.12,1.789-1.827c-0.644,0.28-1.334,0.469-2.06,0.555C17.422,4.782,17.99,4.091,18.258,3.266">
                                                  </path>
                                              </svg>
                                              <a :href="'https://twitter.com/'+author.twitter"
                                                  class="flex-1">{{author.twitter}}</a><br>
                                          </div>
                                          <p class="mt-2"> {{author.affiliation}} </p>
                                      </div>
                                  </div>
                              </div>
                          </div>
                      </div>
                      <h5 class="font-bold text-cool-gray-500 text-sm mt-4"> Abstract</h5>
                      <div class="text-sm" v-html="poster.abstract"></div>
                      <div class="flex">
                          <div class="full lg:w-1/2">
                              <h5 class="font-bold text-cool-gray-500 text-sm mt-4"> Metadata</h5>
                              <div class="flex flex-wrap items-center text-sm">
                                  <div class="w-full" v-show="poster.doi!=''">
                                      <span class="pr-1 font-medium text-xs">DOI</span>
                                      <a class=" text-red-800 hover:text-gray-500" target="_blank" :href="poster.doi">
                                          {{poster.doi}}
                                      </a>
                                  </div>
                                  <div class="w-full flex items-center" v-show="poster.twitter!=''">
                                      <svg class="w-4 h-4  inline-block mr-2 stroke-current text-blue-500 fill-current"
                                          viewBox="0 0 20 20">
                                          <path
                                              d="M18.258,3.266c-0.693,0.405-1.46,0.698-2.277,0.857c-0.653-0.686-1.586-1.115-2.618-1.115c-1.98,0-3.586,1.581-3.586,3.53c0,0.276,0.031,0.545,0.092,0.805C6.888,7.195,4.245,5.79,2.476,3.654C2.167,4.176,1.99,4.781,1.99,5.429c0,1.224,0.633,2.305,1.596,2.938C2.999,8.349,2.445,8.19,1.961,7.925C1.96,7.94,1.96,7.954,1.96,7.97c0,1.71,1.237,3.138,2.877,3.462c-0.301,0.08-0.617,0.123-0.945,0.123c-0.23,0-0.456-0.021-0.674-0.062c0.456,1.402,1.781,2.422,3.35,2.451c-1.228,0.947-2.773,1.512-4.454,1.512c-0.291,0-0.575-0.016-0.855-0.049c1.588,1,3.473,1.586,5.498,1.586c6.598,0,10.205-5.379,10.205-10.045c0-0.153-0.003-0.305-0.01-0.456c0.7-0.499,1.308-1.12,1.789-1.827c-0.644,0.28-1.334,0.469-2.06,0.555C17.422,4.782,17.99,4.091,18.258,3.266">
                                          </path>
                                      </svg>
                                      <a class=" text-red-800 hover:text-gray-500" target="_blank"
                                          :href="poster.twitter">
                                          Link to tweet
                                      </a>
                                  </div>
                                  <div class="w-full flex items-center" v-show="poster.license!=''">
                                      <span class="w-4 mr-2">&copy;</span>
                                      <span>
                                          <img class="h-6 w-auto block"
                                              :src="httpUrl+'site/templates/img/'+poster.license+'.svg'"
                                              :alt="poster.license">

                                      </span>
                                  </div>
                              </div>
                          </div>
                          <div class="full lg:w-1/2">
                              <h5 class="font-bold text-cool-gray-500 text-sm mt-4"> Tags</h5>
                              <div class="flex flex-wrap items-center text-sm">
                                  <span
                                      class="text-xs inline-flex items-center font-medium leading-sm mb-1 px-3 py-1 rounded-full bg-white text-gray-700 border"
                                      v-for="tag in poster.tags" v-bind:class="{'bg-cool-gray-300' : tagChecked(tag)}">
                                      {{tag.name}}
                                  </span>
                                  <span v-show="poster.tags.length==0">No tags</span>
                              </div>
                          </div>
                      </div>
                      <div class="flex mt-6 items-center content-end align-bottom flex-wrap">
                          <div class="flex-1 ">
                              <div class="block w-full mx-auto flex items-center text-cool-gray-600">
                                  <svg class="w-8 h-8 mx-2 stroke-current" viewBox="0 0 20 20">
                                      <path fill="none" d="M12.871,9.337H7.377c-0.304,0-0.549,0.246-0.549,0.549c0,0.303,0.246,0.55,0.549,0.55h5.494
                                                c0.305,0,0.551-0.247,0.551-0.55C13.422,9.583,13.176,9.337,12.871,9.337z M15.07,6.04H5.179c-0.304,0-0.549,0.246-0.549,0.55
                                                c0,0.303,0.246,0.549,0.549,0.549h9.891c0.303,0,0.549-0.247,0.549-0.549C15.619,6.286,15.373,6.04,15.07,6.04z M17.268,1.645
                                                H2.981c-0.911,0-1.648,0.738-1.648,1.648v10.988c0,0.912,0.738,1.648,1.648,1.648h4.938l2.205,2.205l2.206-2.205h4.938
                                                c0.91,0,1.648-0.736,1.648-1.648V3.293C18.916,2.382,18.178,1.645,17.268,1.645z M17.816,13.732c0,0.607-0.492,1.1-1.098,1.1
                                                h-4.939l-1.655,1.654l-1.656-1.654H3.531c-0.607,0-1.099-0.492-1.099-1.1v-9.89c0-0.607,0.492-1.099,1.099-1.099h13.188
                                                c0.605,0,1.098,0.492,1.098,1.099V13.732z"></path>
                                  </svg><span>{{poster.comments}}&nbsp;Comment<span
                                          v-show="poster.comments>1">s</span></span></div>
                          </div>
                          <div class="flex-1 ">
                              <div class="block w-full mx-auto flex items-center text-cool-gray-600" v-if="voting">
                                  <svg class="w-8 h-8 mx-2 stroke-current"
                                      v-bind:class="{'text-red-600' : alreadyVoted}" viewBox="0 0 20 20">
                                      <path
                                          d="M9.719,17.073l-6.562-6.51c-0.27-0.268-0.504-0.567-0.696-0.888C1.385,7.89,1.67,5.613,3.155,4.14c0.864-0.856,2.012-1.329,3.233-1.329c1.924,0,3.115,1.12,3.612,1.752c0.499-0.634,1.689-1.752,3.612-1.752c1.221,0,2.369,0.472,3.233,1.329c1.484,1.473,1.771,3.75,0.693,5.537c-0.19,0.32-0.425,0.618-0.695,0.887l-6.562,6.51C10.125,17.229,9.875,17.229,9.719,17.073 M6.388,3.61C5.379,3.61,4.431,4,3.717,4.707C2.495,5.92,2.259,7.794,3.145,9.265c0.158,0.265,0.351,0.51,0.574,0.731L10,16.228l6.281-6.232c0.224-0.221,0.416-0.466,0.573-0.729c0.887-1.472,0.651-3.346-0.571-4.56C15.57,4,14.621,3.61,13.612,3.61c-1.43,0-2.639,0.786-3.268,1.863c-0.154,0.264-0.536,0.264-0.69,0C9.029,4.397,7.82,3.61,6.388,3.61">
                                      </path>
                                  </svg><span>{{poster.votes}}&nbsp;Vote<span v-show="poster.votes>1">s</span></span>
                              </div>
                          </div>
                          <div class="w-full sm:flex-1 content-center items-center text-center">
                              <a @click="showPoster(poster)"
                                  class="cursor-pointer w-full sm:w-auto mt-2 sm:mt-0 inline-block focus:outline-none border border-transparent py-2 px-5 rounded-lg shadow-sm text-center text-white bg-gray-500 hover:bg-gray-600 font-medium">
                                  View
                              </a>
                          </div>
                      </div>
                  </div>
              </div>
          </div>
      </div>
  </div>
</template>


<script>

export default {
  props: ['poster', 'tags', 'httpUrl', 'votedPosters', 'voting'],

      data() {
          return {
              message: '',
              status: "test"
          };
      },
      methods: {
          showPoster(poster) {
              this.$router.push({
                  name: 'single',
                  params: {
                      "id": poster.id
                  },
                  query: {
                      q: this.$route.query.q,
                      tags: this.tags,
                      limit: isNaN(parseInt(this.$route.query.limit)) ? 10 : parseInt(this.$route.query.limit)
                  }
              });
          },
          tagChecked: function (currentTag) {
              for (var i = 0; i < this.tags.length; i++) {
                  if (this.tags[i] == currentTag.id) {
                      return true
                  }
              }
              return false
          },
      },
      computed: {
          alreadyVoted() {
              return this.votedPosters.includes(this.poster.id.toString())
          },
      },
      mounted() {
      }
  };
</script>