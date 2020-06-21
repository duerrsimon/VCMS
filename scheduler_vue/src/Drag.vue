<template>
  <div class="flex px-2">
    <div class="w-1/3 pr-10">
      <div class="sticky top-0">
        <h3 class="mt-2 font-medium text-xl">List of available abstracts</h3>
        <div class="flex py-2 w-full">
          <div class="flex-none  w-full form-input block relative">
            <span class="h-full absolute inset-y-0 left-0 flex items-center pl-2">
              <svg viewBox="0 0 24 24" class="h-4 w-4 fill-current text-gray-500">
                <path
                  d="M10 4a6 6 0 100 12 6 6 0 000-12zm-8 6a8 8 0 1114.32 4.906l5.387 5.387a1 1 0 01-1.414 1.414l-5.387-5.387A8 8 0 012 10z">
                </path>
              </svg>
            </span>
            <input placeholder="Search" v-model="search"
              class="appearance-none rounded-r rounded-l sm:rounded-l-none block pl-8 pr-6 py-0 w-full bg-white text-sm placeholder-gray-400 text-gray-700 focus:bg-white focus:placeholder-gray-600 focus:text-gray-700 focus:outline-none z-0" />
          </div>
        </div>
        <div class="flex flex-col">
          <div class="-my-2 py-2 overflow-x-auto sm:px-6 lg:-mx-8 lg:px-8">
            <div
              class="align-middle inline-block min-w-full shadow overflow-hidden sm:rounded-lg border-b border-gray-200">
              <table class="min-w-full">
                <thead>
                  <tr>
                    <th
                      class="w-1/4 px-6 py-3 border-b border-gray-200 bg-gray-50 text-left text-xs leading-4 font-medium text-gray-500 uppercase tracking-wider">
                      Speaker
                    </th>
                    <th
                      class="w-3/4 px-6 py-3 border-b border-gray-200 bg-gray-50 text-left text-xs leading-4 font-medium text-gray-500 uppercase tracking-wider">
                      Title
                    </th>
                  </tr>
                </thead>
                <draggable class="dragArea list-group bg-white" tag="tbody" :list="filterAbstracts"
                  :group="{ name: 'people' }">
                  <!-- pull: 'clone', put: false @change="log(-1, $event)" -->
                  <tr v-for="element in filterAbstracts" :key="element.id">
                    <td class="px-6 py-4  border-b border-gray-200">
                      <div class="flex items-center">
                        <div class="text-sm leading-5 font-medium text-gray-900">{{element.speaker}} <br>
                          <span class="text-sm leading-5 text-gray-500">{{element.affiliation}}</span></div>
                      </div>
                    </td>
                    <td class="px-6 py-4  border-b border-gray-200">
                      <div class="text-sm leading-5 text-gray-900"><a class="hover:text-red-800">{{element.title}}</a>
                      </div>
                      <span
                        class="mt-2 inline-flex text-xs leading-5 font-semibold rounded-full bg-green-100 text-green-800">
                        {{element.category}}
                      </span>
                    </td>
                  </tr>
                </draggable>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="w-2/3">
      <t-alert base-class="border px-4 py-3 rounded relative" variant="warning" class="mt-4 text-sm" show>
        <p>Times are entered in the local timezone (<b>{{userTimezone}}</b>) of your computer. VCMS will convert them to
          UTC and display them according to the user timezone.</p>
      </t-alert>
      <div v-for="(day,identifier) in days" class="mt-6">
        <div class="flex justify-between ">
          <div class="">
            <h3 class="text-xl font-medium text-gray-600">{{day.day}}</h3> <span>{{day.time.format('DD.MM.YYYY')}}
            </span>
          </div>
          <div class="flex items-center">
            <t-button @click="addBreak(identifier)" size="sm" class="mr-1"> <svg class="w-4 h-4 mr-1"
                viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                stroke-linejoin="round">
                <path d="M18 8h1a4 4 0 0 1 0 8h-1"></path>
                <path d="M2 8h16v9a4 4 0 0 1-4 4H6a4 4 0 0 1-4-4V8z"></path>
                <line x1="6" y1="1" x2="6" y2="4"></line>
                <line x1="10" y1="1" x2="10" y2="4"></line>
                <line x1="14" y1="1" x2="14" y2="4"></line>
              </svg> Add break</t-button>
            <t-button @click="removeDay(identifier)" size="sm" class="mr-8"> <svg
                class="w-4 h-4 mr-1 stroke-current text-gray-600 hover:text-blue-700 focus:text-blue-700"
                viewBox="0 0 20 20">
                <path fill="none"
                  d="M12.71,7.291c-0.15-0.15-0.393-0.15-0.542,0L10,9.458L7.833,7.291c-0.15-0.15-0.392-0.15-0.542,0c-0.149,0.149-0.149,0.392,0,0.541L9.458,10l-2.168,2.167c-0.149,0.15-0.149,0.393,0,0.542c0.15,0.149,0.392,0.149,0.542,0L10,10.542l2.168,2.167c0.149,0.149,0.392,0.149,0.542,0c0.148-0.149,0.148-0.392,0-0.542L10.542,10l2.168-2.168C12.858,7.683,12.858,7.44,12.71,7.291z M10,1.188c-4.867,0-8.812,3.946-8.812,8.812c0,4.867,3.945,8.812,8.812,8.812s8.812-3.945,8.812-8.812C18.812,5.133,14.867,1.188,10,1.188z M10,18.046c-4.444,0-8.046-3.603-8.046-8.046c0-4.444,3.603-8.046,8.046-8.046c4.443,0,8.046,3.602,8.046,8.046C18.046,14.443,14.443,18.046,10,18.046z">
                </path>
              </svg> Remove day</t-button>
          </div>
        </div>
        <div class="flex flex-col mb-10">
          <div class="-my-2 py-2 w-full sm:-ml-6 sm:px-6 lg:-ml-8 lg:px-8">
            <div
              class="align-middle inline-block min-w-full shadow overflow-hidden sm:rounded-lg border-b border-gray-200">
              <table class="min-w-full z-0 ">
                <thead>
                  <tr>
                    <th
                      class="w-2/12 px-6 py-3 border-b border-gray-200 bg-gray-50 text-left text-xs leading-4 font-medium text-gray-500 uppercase tracking-wider">
                      Speaker
                    </th>
                    <th
                      class="w-5/12  px-6 py-3 border-b border-gray-200 bg-gray-50 text-left text-xs leading-4 font-medium text-gray-500 uppercase tracking-wider">
                      Title
                    </th>
                    <th
                      class="w-1/12  px-6 py-3 border-b border-gray-200 bg-gray-50 text-left text-xs leading-4 font-medium text-gray-500 uppercase tracking-wider">
                      Type
                    </th>
                    <th
                      class="w-4/12 px-6 py-3 border-b border-gray-200 bg-gray-50 text-left text-xs leading-4 font-medium text-gray-500 uppercase tracking-wider">
                      Time
                    </th>
                    <th
                      class="w-1/12 px-1 py-3 border-b border-gray-200 bg-gray-50 text-left text-xs leading-4 font-medium text-gray-500 uppercase tracking-wider">
                      <svg class="w-4 h-4 stroke-current text-gray-600 cursor-pointer" viewBox="0 0 20 20">
                        <path fill="none" d="M15.808,14.066H6.516v-1.162H5.354v1.162H4.193c-0.321,0-0.581,0.26-0.581,0.58s0.26,0.58,0.581,0.58h1.162
								v1.162h1.162v-1.162h9.292c0.32,0,0.58-0.26,0.58-0.58S16.128,14.066,15.808,14.066z M15.808,9.419h-1.742V8.258h-1.162v1.161
								h-8.71c-0.321,0-0.581,0.26-0.581,0.581c0,0.321,0.26,0.581,0.581,0.581h8.71v1.161h1.162v-1.161h1.742
								c0.32,0,0.58-0.26,0.58-0.581C16.388,9.679,16.128,9.419,15.808,9.419z M17.55,0.708H2.451c-0.962,0-1.742,0.78-1.742,1.742v15.1
								c0,0.961,0.78,1.74,1.742,1.74H17.55c0.962,0,1.742-0.779,1.742-1.74v-15.1C19.292,1.488,18.512,0.708,17.55,0.708z M18.13,17.551
								c0,0.32-0.26,0.58-0.58,0.58H2.451c-0.321,0-0.581-0.26-0.581-0.58v-15.1c0-0.321,0.26-0.581,0.581-0.581H17.55
								c0.32,0,0.58,0.26,0.58,0.581V17.551z M15.808,4.774H9.419V3.612H8.258v1.162H4.193c-0.321,0-0.581,0.26-0.581,0.581
								s0.26,0.581,0.581,0.581h4.065v1.162h1.161V5.935h6.388c0.32,0,0.58-0.26,0.58-0.581S16.128,4.774,15.808,4.774z">
                        </path>
                      </svg>
                    </th>
                  </tr>
                </thead>
                <draggable class="dragArea list-group bg-white" tag="tbody" :list="day.list" group="people"
                  @change="log(identifier, $event, day.time)">
                  <tr v-for="(element, idx) in day.list" :key="element.id"
                    v-bind:class="{ 'bg-orange-100': element.category=='Break'}">
                    <td class="w-1/6 px-6 py-4  border-b border-gray-200 cursor-move">
                      <div class="flex items-center">
                        <div class="text-sm leading-5 font-medium text-gray-900">{{element.speaker}} <br>
                          <span class="text-sm leading-5 text-gray-500">{{element.affiliation}}</span></div>
                      </div>
                    </td>
                    <td class="w-2/6 px-6 py-4  border-b border-gray-200">
                      <div class="text-sm leading-5 text-gray-900 flex flex-wrap">
                        <a class="hover:text-red-800 w-full cursor-move"
                          v-show="element.category!='Break'">{{element.title}}</a>
                        <t-input v-model="element.title" name="Title" size="sm" class="ml-2 inline-block w-full"
                          v-show="element.category=='Break'" />
                        <div class="w-full mt-2 flex items-center text-blue-600 "><svg fill="none"
                            stroke-linecap="round" stroke-linejoin="round" stroke-width="2" stroke="currentColor"
                            viewBox="0 0 24 24" class="w-4 h-4 stroke-current">
                            <path
                              d="M13.828 10.172a4 4 0 00-5.656 0l-4 4a4 4 0 105.656 5.656l1.102-1.101m-.758-4.899a4 4 0 005.656 0l4-4a4 4 0 00-5.656-5.656l-1.1 1.1">
                            </path>
                          </svg>
                          <t-input v-model="element.link" name="Link to Webinar" size="sm"
                            class="ml-2 inline-block w-full" />
                        </div>
                      </div>
                    </td>
                    <td class="w-1/6 px-6 py-4 p border-b border-gray-200">
                      <t-select size="sm" v-model="element.category" :options="categories"
                        v-show="element.category!='Break'" />
                      <span
                        class="mt-2 p-2 inline-flex text-xs leading-5 font-semibold rounded-sm bg-green-100 text-green-800"
                        v-show="element.category=='Break'"> {{element.category}}
                      </span>
                    </td>
                    <td class="w-2/6 px-6 py-4  border-b border-gray-200 text-sm leading-5 text-gray-500">
                      <div class="flex flex-wrap">
                        <div class="w-full flex items-center">
                          <span class="font-medium w-1/5">Start</span>
                            <a-time-picker class="w-4/5" v-model="element.clockstart" :minuteStep=5 format="HH:mm" />
                        </div>
                        <span class="w-full">in {{timezoneCityName}}: {{timezoneHour(element.clockstart)}}</span>
                        <div class="w-full mt-2 flex items-center">
                          <span class="font-medium w-1/5">End</span>
                          <a-time-picker class="w-4/5" v-model="element.clockend" :minuteStep=5 format="HH:mm" />
                        </div>
                        <span class="w-fill">in {{timezoneCityName}}: {{timezoneHour(element.clockend)}}</span>
                      </div>
                    </td>
                    <td
                      class="w-1/6 px-1 py-4 whitespace-no-wrap border-b border-gray-200 text-sm leading-5 text-gray-500">
                      <span @click="removeAt(identifier, idx)">
                        <svg class="w-4 h-4 stroke-current text-gray-600 hover:text-blue-700 focus:text-blue-700"
                          viewBox="0 0 20 20">
                          <path fill="none"
                            d="M12.71,7.291c-0.15-0.15-0.393-0.15-0.542,0L10,9.458L7.833,7.291c-0.15-0.15-0.392-0.15-0.542,0c-0.149,0.149-0.149,0.392,0,0.541L9.458,10l-2.168,2.167c-0.149,0.15-0.149,0.393,0,0.542c0.15,0.149,0.392,0.149,0.542,0L10,10.542l2.168,2.167c0.149,0.149,0.392,0.149,0.542,0c0.148-0.149,0.148-0.392,0-0.542L10.542,10l2.168-2.168C12.858,7.683,12.858,7.44,12.71,7.291z M10,1.188c-4.867,0-8.812,3.946-8.812,8.812c0,4.867,3.945,8.812,8.812,8.812s8.812-3.945,8.812-8.812C18.812,5.133,14.867,1.188,10,1.188z M10,18.046c-4.444,0-8.046-3.603-8.046-8.046c0-4.444,3.603-8.046,8.046-8.046c4.443,0,8.046,3.602,8.046,8.046C18.046,14.443,14.443,18.046,10,18.046z">
                          </path>
                        </svg>
                      </span>
                    </td>
                  </tr>
                </draggable>
              </table>
            </div>
            <p v-if="day.list.length==0">No events on this day.</p>
          </div>
        </div>
      </div>
      <a-date-picker v-model="momentNewDay" />
      <t-button @click="newDay()" size="sm" class="my-4">Add new day</t-button>
      <div>
        <p class="text-gray-800 text-sm">If you want to preview this schedule in another timezone select a timezone here
        </p>
        <v-select :options="timeZoneNames" v-model="timezone" class=" w-2/3 px-2"></v-select>
      </div>
      <div class="justify-right text-right">
        <t-button variant="primary" @click="save()">Save</t-button>
      </div>
    </div>
    <t-modal ref="modal" header="Cannot delete day">Please remove all items inside the day before removing this day.
      Empty days will show as no items on this day.</t-modal>
  </div>
  </div>
</template>



<script>
import draggable from "vuedraggable";
import moment from 'moment-timezone';


export default {
  name: "clone",
  display: "Clone",
  order: 2,
  components: {
    draggable
  },
  data() {
    return {
      search: '',
      momentNewDay: null,
      userTimezone: moment.tz.guess(),
      timeZoneNames: moment.tz.names(),
      categories: ['Plenary', 'Invited Talk', 'Submitted Talk', 'Webinar', 'Tutorial'],
      timezone: 'UTC',
      saved: 0,
      days: [],
      abstracts: [],
    };
  },
  created() {

  },
  methods: {
    getAbstracts() {
      axios.get('/VCMS/json/talk/').then(response => (this.abstracts = this.momentize(response.data)));
      axios.get('/VCMS/site/templates/results.json').then(response => (this.days = this.momentizescheduled(response.data)));
    },
    momentize: function(abstracts) {
      abstracts.forEach(function (ab, index, arr) {
        arr[index].clockend = moment(arr[index].clockend)
        arr[index].clockstart = moment(arr[index].clockstart)
      });
      return abstracts
    },
    momentizescheduled: function(abstracts) {
      var abs = JSON.parse(abstracts);
      abs.forEach(function (ab, index, arr) {
        arr[index].time = moment(arr[index].time)
        console.log(arr[index]);
        arr[index].list.forEach(function (item, i, talk) {
          talk[i].clockend = moment(talk[i].clockend)
          talk[i].clockstart = moment(talk[i].clockstart)
        });
      });
      return abs
    },
    timezoneHour: function(mom) {
      if (mom != null) {
        return moment(mom.valueOf()).tz(this.timezone).format('HH:mm');
      } else {
        return "";
      }
    },
    log: function (identifier, evt, oldtime) {
      this.days[identifier].list[evt.added.newIndex].clockstart = this.days[identifier].time.clone().tz(this.userTimezone);
      this.days[identifier].list[evt.added.newIndex].clockend = this.days[identifier].time.clone().tz(this.userTimezone);

    },
    changeDate: function (id, evt) {
      console.log(id)
      console.log(evt)
    },
    getHumanDate: function (UTCdate) {
      return moment(UTCdate).format('HH.mm');
    },
    timezoneMoment: function (time, timezone) {
      return moment(time).tz(timezone);
    },
    removeAt: function(id, idx) {
      if (this.days[id].list[idx].category != "Break") {
        this.abstracts.push(this.days[id].list[idx])

        var formData = new FormData();
        formData.append('id', this.days[id].list[idx].id);
        var xhr = new XMLHttpRequest();
        xhr.addEventListener('readystatechange', this.onreadystatechangeHandler, false);
        xhr.open('POST', '/VCMS/processwire/schedule/unschedule', true);
        xhr.send(formData);
      }
      this.days[id].list.splice(idx, 1);
    },
    removeDay: function (idx) {
      if (this.days[idx].list.length == 0) {
        this.days.splice(idx, 1);
      } else {
        alert("Cannot remove day that has entries left")
      }
    },
    removeDay: function (idx) {
      if (this.days[idx].list.length == 0) {
        this.days.splice(idx, 1);
      } else {
        alert("Cannot remove day that has entries left")
      }
    },
    addBreak: function (idx) {
      this.days[idx].list.push({
        speaker: "",
        id: 1126,
        clockstart: this.days[idx].time,
        clockend: this.days[idx].time,
        title: 'Title to edit once placed on day',
        link: '',
        category: 'Break'

      })

    },
    newDay: function () {
      // if there are already days, then check if new day is farther in the future than last day
      if (this.days.length > 0) {
        try {
          if (this.momentNewDay.tz("UTC") > this.days[this.days.length - 1].time) {
            this.days.push({
              day: this.momentNewDay.clone().tz(this.userTimezone).format('dddd'),
              time: this.momentNewDay.clone().tz(this.userTimezone),
              list: []
            })
          } else {
            alert("New day is smaller than last day");
          }
        } catch (err) {
          alert("could not create new day")
        }

        //If there are no days create a new one
      } else {
        this.days.push({
          day: this.momentNewDay.tz("UTC").format('dddd'),
          time: this.momentNewDay.tz("UTC"),
          list: []
        })
      }


    },
    save() {
      var formData = new FormData();
      formData.append('data', JSON.stringify(this.days));
      var xhr = new XMLHttpRequest();
      xhr.addEventListener('readystatechange', this.onreadystatechangeHandler, false);
      xhr.open('POST', '/VCMS/processwire/schedule/save', true);
      xhr.send(formData);

    },
    onreadystatechangeHandler(evt) {
    },
    moment,
  },
  computed: {
    timezoneCityName: function () {
      var current = ''
      if (this.timezone.split('/')[1]) {

        if (this.timezone.split("/").length == 3) {
          current = this.timezone.split('/')[2].replace('_', ' ');
        } else {
          current = this.timezone.split('/')[1].replace('_', ' ');
        }
      } else {
        current = this.timezone.replace('_', ' ');
      }
      return current;
    },
    filterAbstracts: function () {
      let filtered = this.abstracts;
      if (this.search) {
        filtered = this.abstracts.filter(
          m => m.speaker.toLowerCase().indexOf(this.search.toLowerCase()) > -1 ||
          m.title.toLowerCase().indexOf(this.search.toLowerCase()) > -1 ||
          m.category.toLowerCase().indexOf(this.search.toLowerCase()) > -1
        );
      }
      return filtered;
    }
  },
  created() {
    this.getAbstracts();
  }
};
</script>
<style scoped>
svg {max-width: 1rem;}

</style>