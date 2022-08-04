<script setup lang="ts">
import { useNotification } from "naive-ui";

const notification = useNotification();
const notify = () => {
  notification.info({
    title: "miel agency Content",
    content: 
`There's been a lot on my plate lately and I haven't had the chance to brainstorm and design this part yet.

I'll develop this part as soon as I can. 🙇‍♂️`,
    duration: 5000,
  });
};
</script>

<template>
  <div class="parent">
    <div class="child">
      <div class="content">
        <div class="content-text content-text-title">miel agency</div>
        <div class="content-text content-text-subtitle">
          influencer marketing
        </div>
        <div
          class="hidden-button slant cursive-text mt-5"
          style="cursor: pointer"
          @click="notify"
        >
          see more
        </div>
      </div>
    </div>
  </div>
</template>

<style scoped>
.parent {
  position: relative;
  overflow: hidden;
  height: 100vh;
  width: 100%;
}
.child {
  width: 100%;
  height: 100%;
  background-image: url("../../../assets/images/work/mielAgency.jpg");
  background-size: cover;
  background-position: center;

  display: flex;
  align-items: center;
  justify-content: center;
}

.hidden-button {
  text-decoration: underline 0.15em;
  text-underline-offset:  var(--offset, 0.2em);
  transition: --offset 400ms, text-decoration-color 400ms;
  color: white;
  font-size: 1.5rem;
}

.parent:hover .hidden-button {
  --offset: 0.4em;
  text-decoration-color: #c0375f;
}

@media screen and (min-width: 600px) {
  .child {
    transition: all 20s;
  }

  .parent:hover .child,
  .parent:focus .child {
    transform: scale(1.2);
  }
  .parent:hover .child:before,
  .parent:focus .child:before {
    display: block;
  }
}
</style>
