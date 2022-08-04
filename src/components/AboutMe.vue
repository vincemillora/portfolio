<script setup lang="ts">
import footerSection from "./misc/FooterSection.vue";
import bodyFooter from "../assets/images/profile/AboutMeFooter.vue";
</script>

<template>
  <div class="parent">
    <div class="title-section">
      <div class="sticky-section">
        <div class="title-content">
          <div class="title-text cursive-text slant" style="color: white">
            About Me
          </div>
        </div>
        <div class="footer-section">
          <footerSection :is-dark="false" />
        </div>
      </div>
    </div>
    <div class="body-section">
      <div class="body-text">
        <span style="margin-bottom: 32px;">
          <span style="font-weight: 500; font-size: 1.5rem;">Hi there, I'm Vince, from the Philippines currently working in Tokyo, Japan as a web developer.</span><br/><br/>
          
          My career so far was exploring and developing applications using different technologies; I've been a back-end developer designing databases and APIs, a Blockchain developer 
          creating Smart Contracts and dApps, and a front-end developer designing and creating web and mobile applications. Recently, my roles are focused on the front-end side of the application. <br/><br/>
          
          These days I'm interested and trying out the new releases of front-end frameworks like Vue 3 and Nuxt 3. Aside from that, I'm also studying and expanding my skills in Docker. <br/><br/>
          
          Outside work and study time, I spend my time playing League of Legends and Valorant, or binging TV series and movies.
        </span>
        <div style="margin-top: auto; align-self: end; width: 100%">
          <bodyFooter />
        </div>
      </div>
    </div>
  </div>
</template>

<style scoped>
.parent {
  display: flex;
}

.title-content {
  width: 100%;
  height: 100vh;
  background: linear-gradient(
      rgba(255, 255, 255, 0) 0%,
      rgba(0, 0, 0, 0.4) 100%
    ),
    url("../assets/images/profile/aboutme.jpg");
  background-size: cover;
  background-position: center;  

  display: flex;
  align-items: center;
  justify-content: center;
}

.body-section {
  min-height: 100vh;
  position: relative;
  background: white;
}
.body-text {
  display: flex;
  flex-direction: column;
  font-size: 1rem;
}

@media screen and (max-width: 600px) {
  .parent {
    flex-direction: column;
  }
  .title-section {
    width: 100%;
    position: relative;
    overflow: hidden;
  }
  .body-section {
    width: 100%;
  }
  .body-text {
    padding: 32px;
    min-height: calc(100vh - 64px);
  }
}
@media screen and (min-width: 600px) {
  .parent {
    flex-direction: row;
  }
  .title-section {
    width: 50%;
    overflow: unset;
  }
  .title-content {
    transition: all 20s;
  }
  .body-section {
    width: 50%;
  }
  .body-text {
    padding: 64px;
    min-height: calc(100vh - 128px);
  }
  .sticky-section {
    position: -webkit-sticky;
    position: sticky;
    top: 0px;
  }

  .title-section:hover .title-content,
  .title-section:focus .title-content {
    transform: scale(1.2);
  }
  .title-section:hover .title-content:before,
  .title-section:focus .title-content:before {
    display: block;
  }
}
</style>
