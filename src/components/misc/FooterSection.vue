<script setup lang="ts">
import { NButton } from "naive-ui";

defineProps({
  isDark: {
    type: Boolean,
    default: false,
  },
});

const scrollTo = (location: string) => {
  const scrollToLocation = document.getElementById(location);
  if (scrollToLocation !== null) {
    scrollToLocation.scrollIntoView({
      behavior: "smooth",
      block: "start",
      inline: "start",
    });
  }
};
</script>

<template>
  <div :style="`color: ${isDark ? '#2C2E2F' : 'white'}`">
    <n-button
      quaternary
      :color="isDark ? '#2C2E2F' : 'white'"
      size="medium"
      @click="scrollTo('about')"
    >
      <div class="hidden-button">About Me</div>
    </n-button>
    ・
    <n-button
      quaternary
      :color="isDark ? '#2C2E2F' : 'white'"
      size="medium"
      @click="scrollTo('work')"
    >
      <div class="hidden-button">Work</div>
    </n-button>
    ・
    <n-button
      quaternary
      :color="isDark ? '#2C2E2F' : 'white'"
      size="medium"
      @click="scrollTo('contact')"
    >
      <div class="hidden-button">Contact Me</div>
    </n-button>
  </div>
</template>

<style scoped>
.hidden-button {
  text-underline-offset: var(--offset, 0.1em);
  transition: --offset 400ms, text-decoration-color 400ms;
}
.footer-button:hover .hidden-button {
  --offset: 0.2em;
  text-decoration: underline 0.15em;
  transform: rotate(-5deg) skew(-5deg);
}
</style>
