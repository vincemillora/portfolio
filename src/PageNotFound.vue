<script setup lang="ts">
import error from "./assets/images/404.vue";
import { RouterLink } from "vue-router";
</script>

<template>
  <div class="header-background">
    <div class="header-body">
      <div class="header-image" style="z-index: -1">
        <error />
      </div>
      <router-link to="/" style="text-decoration: none;">
        <div class="cursive-text slant return-button">return home。</div>
      </router-link>
    </div>
  </div>
</template>

<style scoped>
.header-background {
  height: 100vh;
  position: relative;

  display: flex;
  align-items: center;
  justify-content: center;
}

.header-body {
  width: 100%;
  text-align: center;
}
.header-image {
  margin: auto;
}
@media screen and (max-width: 600px) {
  .header-image {
    width: 70%;
  }
}
@media screen and (min-width: 600px) {
  .header-image {
    width: 20%;
  }
}
.return-button {
  letter-spacing: -0.015625em;
  font-weight: 900 !important;
  font-size: 3.5rem;
  margin-top: -20px;
  position: relative;
  color: #c0375f;

  text-decoration: none 0.15em;
  text-decoration: underline 0.15em;
  text-underline-offset:  var(--offset, 0.2em);
  transition: --offset 400ms, text-decoration-color 400ms;
  text-decoration-color: #2C2E2F;
}
.header-body:hover .return-button {
  --offset: 0.4em;
  text-decoration-color: #c0375f;
}
@media screen and (max-width: 350px) {
  .return-button {
    font-size: 2rem;
  }
}
</style>
