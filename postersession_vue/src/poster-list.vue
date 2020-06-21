<template>
<div id="app">
  <div class="bg-gray-200 pb-8">
    <div class=" mx-auto py-6 sm:px-6 lg:px-8 flex flex-no-wrap align-top max-w-7xl">
      <div class=" mx-auto container">
        <SinglePoster
         v-for="poster in displayedPosters" 
         v-bind:poster="poster" 
         v-bind:tags="checkedTags"
         v-bind:httpUrl="httpUrl"
         v-bind:votedPosters="votedPosters"
         :key="poster.id"
         v-bind:voting="voting">
        </SinglePoster>
      </div>
    </div>
  </div>
</div>
</template>


<script>

import SinglePoster from './poster.vue'
export default {
  name: "PosterList",
  props: ['displayedPosters', 'checkedTags', 'httpUrl', 'votedPosters', 'voting'],


  data() {
    return {
      status: 'poster-list'
    };
  },
  method: {

  },
  components: {
    SinglePoster,
  }
}; 
</script>

<style>
.searchwrapper ul{
  overflow:hidden !important;
  padding:0 !important;
}
.searchwrapper>div{
  border-radius:0!important;
}
.searchwrapper span:not(.pill){
  display:none !important;
}
.searchwrapper .pill>span{
  display:inline-block !important;
}
.bordered{
  border:0 !important;
}
</style>