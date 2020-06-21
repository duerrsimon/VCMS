<?php namespace ProcessWire;


if ($settings->access_control->id>3){
  if(!$user->isLoggedin() ) { // not for login page
    $session->set('returnPage', $page->httpUrl);
    $session->redirect( $home->httpUrl.'sign-in/');
    die;
  }
}

?>





<pw-region pw-replace="headerscript">
<script  src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.1/js/select2.min.js"></script>
<script  src="<?=urls()->templates?>scripts/moment-with-locales.min.js"></script>
<script  src="<?=urls()->templates?>scripts/moment-timezone-with-data-10-year-range.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue@2.6.11"></script>
<style>
  [v-cloak] > * { display:none }

</style>
</pw-region>

<header class="bg-white" pw-replace="header">
</header>
<main pw-replace="main">

  <div id="app" >
    <div class="max-w-7xl mx-auto py-6 px-4 sm:px-6 lg:px-8 flex flex-wrap items-center" >
      <h1 class="w-full sm:w-1/3 md:w-6/12 text-3xl font-bold leading-tight text-gray-900">
        Schedule
      </h1>
      <div class="flex-none w-full sm:w-1/3 md:w-4/12  mt-1 block sm:pr-2">
        <div class="flex items-center">
          <label for="price" class="flex-1 text-sm leading-5 font-medium text-gray-700 text-right pr-1">Timezone</label>
          <div class="flex-1 relative rounded-md shadow-sm bg-white">
            <select2 :options="options" v-model="currentTz" aria-label="Timezone">
            </select2>
          </div>
        </div>
      </div>
      <autocomplete :results="searchResults" v-model="search" :search="search" class="w-4/5 sm:1/3 md:w-1/6"></autocomplete>
    </div>
    <div class="bg-gray-200 pb-8 " >
      <div class="max-w-7xl mx-auto py-1 px-4 sm:px-6 lg:px-8" v-cloak>
        <div v-for="(day,identifier) in days" class="mt-6">
          <div class="flex flex-col mb-10">
            <div class="-my-2 py-2 w-full  sm:px-6 lg:-ml-8 lg:px-8">
              <div class="flex flex-no-wrap mb-4">
                <div class="w-1/2 sm:w-8/12 ">
                  <h2
                    class="text-2xl mt-2  font-bold leading-7 text-gray-900 sm:text-3xl sm:leading-9 flex items-center ">
                    <span>{{day.day}}</span>
                  </h2>
                  <span class="text-lg">{{day.time.format('DD.MM.YYYY')}} </span>
                </div>
                <div class="w-4/12 flex items-center">
                  <span class="flex-1 text-sm leading-5 font-medium text-gray-700 text-right pr-2"><svg fill="none"
                      stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                      viewBox="0 0 24 24" class="w-6 h-6 inline">
                      <path
                        d="M3.055 11H5a2 2 0 012 2v1a2 2 0 002 2 2 2 0 012 2v2.945M8 3.935V5.5A2.5 2.5 0 0010.5 8h.5a2 2 0 012 2 2 2 0 104 0 2 2 0 012-2h1.064M15 20.488V18a2 2 0 012-2h3.064M21 12a9 9 0 11-18 0 9 9 0 0118 0z">
                      </path>
                    </svg></span>
                  <div class="flex-initial relative rounded-md shadow-sm bg-white">
                    <span class="currentTz px-4"> {{currentTz}} </span>
                  </div>
                </div>
              </div>
              <div
                class="sm:bg-white align-middle inline-block min-w-full sm:shadow overflow-hidden sm:rounded-lg  border-b border-gray-200">
                <div role="table" class="min-w-full z-0 table-container ">
                <div class="hidden sm:flex flex-wrap sm:flex-no-wrap  header " role="rowgroup">
                   
                      <div role="columnheader" class="w-full sm:w-1/6 px-6 py-3 border-b border-gray-200 bg-gray-50 text-left text-xs leading-4 font-medium text-gray-500 uppercase tracking-wider">
                        Speaker
                      </div>
                      <div role="columnheader" class="flex-row first  w-full sm:w-1/2  px-6 py-3 border-b border-gray-200 bg-gray-50 text-left text-xs leading-4 font-medium text-gray-500 uppercase tracking-wider">
                        Title
                      </div>
                      <div role="columnheader" class="flex-row first  w-full sm:w-1/6  px-6 py-3 border-b border-gray-200 bg-gray-50 text-left text-xs leading-4 font-medium text-gray-500 uppercase tracking-wider">
                        Type
                      </div>
                      <div role="columnheader" class="flex-row first  w-full sm:w-1/6 px-6 py-3 border-b border-gray-200 bg-gray-50 text-left text-xs leading-4 font-medium text-gray-500 uppercase tracking-wider">
                        Time
                      </div>

                    </div>
                
                  <div class="flex bg-white sm:shadow flex-wrap sm:flex-no-wrap items-center border my-4 sm:my-0 sm:border-0 sm:border-b border-gray-200 row" role="rowgroup" v-for="(element, idx) in day.list" :key="element.id"
                    v-bind:class="{ 'bg-orange-100': element.category=='Break'}" :id="element.clockstart.valueOf()">
                    <div role="cell" class="flex-row first  w-full sm:w-1/6 px-6 py-4  order-2 sm:order-1">
                      <div class="flex items-center">
                        <div class="text-base leading-5 font-medium text-gray-900">{{element.speaker}} <br>
                          <span class="text-sm leading-5 text-gray-500">{{element.affiliation}}</span></div>
                      </div>
                    </div>
                    <div role="cell" class="flex-row  w-full sm:w-1/2 px-6 py-4 bg-gray-300 sm:bg-transparent order-1 sm:order-2">
                      <div class="text-base leading-5 text-gray-900 flex flex-wrap">
                        <a :href="element.url" class="hover:text-red-800 w-full">{{element.title}}</a>

                        <!-- <div class="w-full text-sm mt-2 flex items-center text-blue-600" v-show="element.link">
                          <svg fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                            stroke="currentColor" viewBox="0 0 24 24" class="w-4 h-4 stroke-current">
                            <path
                              d="M13.828 10.172a4 4 0 00-5.656 0l-4 4a4 4 0 105.656 5.656l1.102-1.101m-.758-4.899a4 4 0 005.656 0l4-4a4 4 0 00-5.656-5.656l-1.1 1.1">
                            </path>
                          </svg>
                          <a href='{{element.link}}'>{{element.link}}</a>
                        </div> -->
                      </div>
                    </div>
                    <div role="cell" class="flex-row  w-1/2 sm:w-1/6 px-6 py-4 p order-3">
                      <span class="mt-2 p-2 inline-flex text-sm leading-5 font-semibold rounded-sm">
                        {{element.category}}
                      </span>
                    </div>
                    <div role="cell" class="flex-row  w-1/2 sm:w-1/6 px-6 py-4  text-sm leading-5 text-gray-500 order-4">
                      <time :datetime="element.clockstart">{{getHumanDate(element.clockstart)}}</time> - <time
                        :datetime="element.clockend">{{getHumanDate(element.clockend)}}</time>
                    </div>
                  </div>
                </div>
              </div>
              <p v-if="day.list.length==0">No events on this day.</p>
            </div>
          </div>
        </div>
      </div>
    </div>

 
  
  <script type="text/x-template" id="select2-template">
      <select  class="form-select h-full w-full py-0 px-2 border-transparent bg-transparent text-gray-500 sm:text-sm sm:leading-5">
        <slot></slot>
      </select>
    </script>
  
    <script type="text/x-template" id="autocomplete">
      <div class="flex-none w-full  sm:w-2/12 form-input mt-1 block relative">
                <span class="h-full absolute inset-y-0 left-0 flex items-center pl-2">
                    <svg viewBox="0 0 24 24" class="h-4 w-4 fill-current text-gray-500">
                        <path
                            d="M10 4a6 6 0 100 12 6 6 0 000-12zm-8 6a8 8 0 1114.32 4.906l5.387 5.387a1 1 0 01-1.414 1.414l-5.387-5.387A8 8 0 012 10z">
                        </path>
                    </svg>
                </span>
                <label for="search"
                    id="searchResultsLabel"
                    class="hidden">
                Search Speakers, Titles or Categories
              </label>
                <input name="search"  placeholder="Search" class="appearance-none rounded-r rounded-l sm:rounded-l-none block pl-8 pr-6 py-0 w-full bg-white text-sm placeholder-gray-400 text-gray-700 focus:bg-white focus:placeholder-gray-600 focus:text-gray-700 focus:outline-none z-0" v-model="searchstring" v-on:input="updateValue(searchstring)"  :aria-expanded="(search.length>0)"
       aria-owns="search-results"
       aria-haspopup="listbox" />
                <button class="h-full absolute inset-y-0 right-0 flex items-center pr-1" v-show="(search.length>0)"
                   @click="remove()">
                    <svg fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" stroke="currentColor" viewBox="0 0 24 24"  class="h-4 w-4 text-gray-500"><path d="M10 14l2-2m0 0l2-2m-2 2l-2-2m2 2l2 2m7-2a9 9 0 11-18 0 9 9 0 0118 0z"></path></svg>
                </button>
                <ul class=" autocomplete-results overflow-auto h-64 absolute bg-white opacity-50 w-full mt-4 border border-cool-gray-400" v-if="(search.length>0)" style="z-index:999" aria-labelledby="searchResultsLabel"
      role="listbox"
      id="search-results">
                  
                  <li class="autocomplete-result px-4 py-2 hover:bg-gray-300" 
                  v-for="(result, i) in results" :key="i" >  
                   <a :href="result.url"> <span class="font-medium" v-html="result.title"></span>
                  <br><span v-html="result.speaker"></span> </a>
                        
                  </li>
                </ul>
              </div>
          <!-- <div class="autocomplete">
          <input type="text" />
          
        </div> -->
    </script>

  <script type="text/javascript">
  Vue.component("autocomplete", {
        props: [ "results","search"],
        template: "#autocomplete",
        data() {
          return{
          searchstring:""
        }},
        methods: {
          updateValue: function (value) {
            this.$emit('input', value)
          },
          remove: function(){
            this.searchstring="";
            this.updateValue('')
          }
      }
  });

  Vue.component("select2", {
        props: ["options", "value"],
        template: "#select2-template",
        mounted: function() {
          var vm = this;
          $(this.$el)
            // init select2
            .select2({ data: this.options })
            .val(this.value)
            .trigger("change")
            // emit event on change.
            .on("change", function() {
              vm.$emit("input", this.value);
            });
        },
        watch: {
          value: function(value) {
            // update value
            $(this.$el)
              .val(value)
              .trigger("change");
          },
          options: function(options) {
            // update options
            $(this.$el)
              .empty()
              .select2({ data: options });
          }
        },
        destroyed: function() {
          $(this.$el)
            .off()
            .select2("destroy");
        }
      });


  var app = new Vue({
  el: '#app',
  data() {
    return {
    days:[],
    currentTz: moment.tz.guess(),
    options: moment.tz.names(), 
    search:""
    }
  },
  computed:{
    searchResults(){
     return this.filterIt(this.days,this.search)
  }
  }, 
  methods:{
    filterIt(arr, searchKey){
      var matches=[]
      arr.forEach(function(day) {
          day.list.some(function(item) {
            if (item.title.toLowerCase().includes(searchKey.toLowerCase()) ||
            item.speaker.toLowerCase().includes(searchKey.toLowerCase()) || 
            item.category.toLowerCase().includes(searchKey.toLowerCase()) ) {
              matches.push(item)
            }
            // break some if more than 5 matches
            return matches.length==5
          });

         });
      return matches
    },
    moment,
    getAbstracts(){
      axios.get('<?=urls()->templates?>results.json').then(response => (this.days= this.momentizescheduled(response.data)));
    },
    momentizescheduled(abstracts){
      var abs = JSON.parse(abstracts);
        abs.forEach(function(ab,index, arr){
        arr[index].time=moment(arr[index].time)
        arr[index].list.forEach(function(item,i, talk){
             talk[i].clockend=moment(talk[i].clockend)
             talk[i].clockstart=moment(talk[i].clockstart)
        });
       });

       return abs
    },
    getHumanDate : function (UTCdate) {
                return moment(UTCdate).tz(this.currentTz).format('HH.mm');
    },
  },
  created(){
    this.getAbstracts()
    
  }
})
        
  </script>
  </div>
   
          
</main>

