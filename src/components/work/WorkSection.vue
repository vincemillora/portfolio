<script setup lang="ts">
import footerSection from "../misc/FooterSection.vue";
import mielAI from "./items/MielAI.vue";
import mielAgency from "./items/MielAgency.vue";
import comiche from "./items/ComicChecker.vue";
import { NNotificationProvider } from "naive-ui";
</script>

<template>
  
  <div class="work-section" style="overflow: unset !important">
    <div class="title-section">
      <div class="title-text cursive-text slant" style="color: white">Work</div>
      <div class="footer-section">
        <footerSection :is-dark="false" />
      </div>
    </div>
    <div class="body-section">
      <n-notification-provider :max="1" placement="top">
        <comiche />
        <mielAgency />
        <mielAI />
      </n-notification-provider>
    </div>
  </div>
</template>

<style scoped>
.work-section {
  display: flex;
}
.title-section {
  width: 50%;
  height: 100vh;
  background-color: #c0375f;

  display: flex;
  align-items: center;
  justify-content: center;
}
.body-section {}
@media screen and (max-width: 600px) {
  .work-section {
    flex-direction: column;
  }
  .title-section {
    width: 100%;
    position: relative;
  }
  .body-section {
    width: 100%;
  }
}
@media screen and (min-width: 600px) {
  .work-section {
    flex-direction: row;
  }
  .title-section {
    width: 50%;
    position: -webkit-sticky;
    position: sticky;
    top: 0px;
  }
  .body-section {
    width: 50%;
  }
}
</style>
