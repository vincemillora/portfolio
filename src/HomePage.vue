<script setup lang="ts">
import Header from "./components/HeaderComponent.vue";
import AboutMe from "./components/AboutMe.vue";
import Work from "./components/work/WorkSection.vue";
import ContactMe from "./components/ContactMe.vue";
import Footer from "./components/FooterComponent.vue";
</script>

<template>
  <div>
    <Header id="header" ref="header" />
    <AboutMe id="about" ref="about" />
    <Work id="work" ref="work" />
    <ContactMe id="contact" ref="contact" />
    <Footer id="footer" ref="footer" />
  </div>
</template>