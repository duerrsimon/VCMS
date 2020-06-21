import Vue from 'vue';
import App from './App.vue';
Vue.use(VueLazyload)
import router from './router'
import Notifications from 'vue-notification'
Vue.use(Notifications)
import TPagination from 'vue-tailwind/src/components/TPagination.vue'
Vue.use(TPagination, {
	wrapperClass: 'table border-collapse',
			itemClass: 'table-cell ',
			pageClass: 'border border-gray-300 w-12 h-12',
			controlClass: 'border border-gray-300 w-12 h-12',
			disabledControlClass: 'border border-gray-300 w-12 h-12',
			ellipsisClass: 'border border-gray-300 w-12 h-12 hidden md:table-cell ',
			buttonClass: 'flex w-full h-full items-center justify-center',
			controlButtonClass: '',
			ellipsisButtonClass: '',
			activeButtonClass: '',
			inactiveButtonClass: '',
			disabledButtonClass: 'cursor-not-allowed',
			disabledControlButtonClass: 'cursor-not-allowed',
  })

  import Vuex from 'vuex'
  
  Vue.use(Vuex)
  
  const store = new Vuex.Store({
	state: {
	  count: 1,
	  currentPoster:null, 
	  displayedPosters:[],
	}
  })


  new Vue({
	el: '#app',
	router,
	store,
	template: '<App/>',
	components: { App }
  })