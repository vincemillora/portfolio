<script setup lang="ts">
import footerSection from "./misc/FooterSection.vue";
import bodyFooter from "../assets/images/ContactFooter.vue";
import {
  LogoTwitter,
  LogoInstagram,
  LogoLinkedin,
  LogoGithub,
} from "@vicons/ionicons5";
import { NIcon } from "naive-ui";

const sendMail = () => {
  window.open("mailto: vcmillora.03@gmail.com");
};
</script>

<template>
  <div class="parent">
    <div class="title-section">
      <div class="title-text cursive-text slant" style="color: white">
        Contact Me
      </div>
      <div class="footer-section">
        <footerSection :is-dark="false" />
      </div>
    </div>
    <div class="body-section">
      <div class="body-text">
        <div
          style="
            padding-bottom: 30px;
            border-bottom: 1px solid rgba(0, 0, 0, 0.12);
          "
        >
          <div style="font-weight: 500; font-size: 1rem">
            Feel free to contact me - I'm open for any topic.
          </div>
          <div style="font-size: 0.75rem">
            You can contact me through my social accounts or through my email:
            <a
              style="
                color: #70c0e8;
                text-decoration: underline;
                cursor: pointer;
              "
              @click="sendMail"
            >
              vcmillora.03@gmail.com
            </a>
          </div>
        </div>
        <div style="margin-top: 16px">
          <a href="https://twitter.com/vcmillora/" target="_blank">
            <n-icon size="32" color="#3e3d57" style="margin-right: 16px">
              <logo-twitter />
            </n-icon>
          </a>
          <a href="https://www.instagram.com/vcmillora/" target="_blank">
            <n-icon size="32" color="#3e3d57" style="margin-right: 16px">
              <logo-instagram />
            </n-icon>
          </a>
          <a
            href="https://www.linkedin.com/in/vince-millora-3606a0143/"
            target="_blank"
          >
            <n-icon size="32" color="#3e3d57" style="margin-right: 16px">
              <logo-linkedin />
            </n-icon>
          </a>
          <a href="https://github.com/vincemillora/" target="_blank">
            <n-icon size="32" color="#3e3d57" style="margin-right: 16px">
              <logo-github />
            </n-icon>
          </a>
        </div>
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

.title-section {
  height: 100vh;
  background-color: #3e3d57;
  position: relative;

  display: flex;
  align-items: center;
  justify-content: center;
}

.body-section {
  height: 100vh;
  position: relative;
}
.body-text {
  display: flex;
  flex-direction: column;
}

@media screen and (max-width: 600px) {
  .parent {
    flex-direction: column;
  }
  .title-section {
    width: 100%;
  }
  .body-section {
    width: 100%;
  }
  .body-text {
    padding: 32px;
    height: calc(100vh - 64px);
  }
}
@media screen and (min-width: 600px) {
  .parent {
    flex-direction: row;
  }
  .title-section {
    width: 50%;
  }
  .body-section {
    width: 50%;
  }
  .body-text {
    padding: 64px;
    height: calc(100vh - 128px);
  }
}
</style>
