import Vue from "vue";
import Router from "vue-router";
import PosterList from "./poster-list.vue";
import Single from "./Single.vue";

Vue.use(Router);

export default new Router({
  mode: "hash",
  routes: [
    {
      path: "/",
      redirect: "/list"
    },
    {
      name:"list",
      path: "/list",
      component: PosterList,
      props: true
    },
    {
     name: "single",
      path: "/view/:id",
      component: Single,
      props: true
    },
    {
      path: "*",
      redirect: "/list"
    },
  ]
});
