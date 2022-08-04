<script setup lang="ts">
import dreamer from "../assets/images/profile/IconHeader.vue";
import footerSection from "./misc/FooterSection.vue";
import { NGradientText } from "naive-ui";
</script>

<template>
  <div class="header-background">
    <div class="header-body">
      <div class="header-image" style="z-index: -1">
        <dreamer />
      </div>
      <n-gradient-text type="error" class="name cursive-text slant">
        Vince Millora
      </n-gradient-text>
    </div>

    <div class="footer-section">
      <footerSection :is-dark="false" />
    </div>
  </div>
</template>

<style scoped>
.header-background {
  height: 100vh;
  background: #2f2e41;
  position: relative;
  background: linear-gradient(
    315deg,
    rgba(46, 47, 65, 255) 40%,
    rgba(62, 61, 87, 255) 100%
  );

  display: flex;
  align-items: center;
  justify-content: center;
  z-index: 1000;
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

.name {
  letter-spacing: -0.015625em;
  font-weight: 900 !important;
  font-size: 3.5rem;
  margin-top: -70px;
  position: relative;
}
@media screen and (max-width: 350px) {
  .name {
    font-size: 2rem;
  }
}
</style>
