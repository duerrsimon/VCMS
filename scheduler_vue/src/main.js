import Vue from 'vue';
import App from './App.vue';
import vSelect from 'vue-select'
Vue.component('v-select', vSelect)
import 'vue-select/dist/vue-select.css';
import TInput from 'vue-tailwind/src/elements/TInput.vue'
import TSelect from 'vue-tailwind/src/elements/TSelect.vue'
import TModal from 'vue-tailwind/src/components/TModal.vue'
import TButton from 'vue-tailwind/src/elements/TButton.vue'
import TAlert from 'vue-tailwind/src/components/TAlert.vue'

Vue.use(TInput)
Vue.use(TModal)
Vue.use(TButton)
Vue.use(TAlert)
Vue.use(TSelect)


import { TimePicker, DatePicker } from 'ant-design-vue';
Vue.use(TimePicker)
Vue.use(DatePicker)

import 'ant-design-vue/es/time-picker/style/index.css';
import 'ant-design-vue/es/date-picker/style/index.css';

new Vue({
	  el: '#app',
	  render: h => h(App),
});
