import { createRouter, createWebHistory } from "vue-router";
import Home from "../HomePage.vue";
// import PageNotFound from "../PageNotFound.vue";

const router = createRouter({
  history: createWebHistory(),
  routes: [
    {
      path: "/",
      name: "home",
      component: Home,
    },
    {
      path: "/:pathMatch(.*)*",
      // path: "/404",
      name: "pageNotFound",
      component: () => import("../PageNotFound.vue"),
    },
  ],
});

export default router;
