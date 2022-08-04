<script setup lang="ts">
import footerImage from "../assets/images/IconFooter.vue";
import footerSection from "./misc/FooterSection.vue";
import { NGradientText } from "naive-ui";
</script>

<template>
  <div class="footer-background">
    <div class="footer-body">
      <div class="footer-image" style="z-index: -1">
        <footerImage />
      </div>
      <n-gradient-text type="error" class="name cursive-text slant">
        Fin.
      </n-gradient-text>
    </div>
    <div class="footer-section">
      <footerSection :is-dark="true" />
    </div>
  </div>
</template>

<style scoped>
.footer-background {
  height: 100vh;
  position: relative;

  display: flex;
  align-items: center;
  justify-content: center;
}

.footer-body {
  width: 100%;
  text-align: center;
}
.footer-image {
  width: 30%;
  margin: auto;
}
@media screen and (max-width: 600px) {
  .footer-image {
    width: 70%;
  }
}
@media screen and (min-width: 600px) {
  .footer-image {
    width: 20%;
  }
}

.name {
  letter-spacing: -0.015625em;
  font-weight: 900 !important;
  font-size: 3.5rem;
  margin-top: -20px;
  position: relative;
}
@media screen and (max-width: 350px) {
  .name {
    font-size: 2rem;
  }
}
</style>
