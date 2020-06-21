<template>
  <div id="app">
     <Drag />
  </div>
</template>

<script>
import Drag from './Drag.vue'


export default {
  data() {
    return {
      message: 'Scheduler',
    };
  },
  components: {
		Drag
	}
};
</script>

<style>
</style>


