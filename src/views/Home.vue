<template>
  <div class="home">
    <img src="../assets/福字.svg" alt="福" width="200" />
    <HelloWorld msg="欢迎来到你的 Vue.js App" />
  </div>
</template>

<script>
// @ is an alias to /src
import HelloWorld from "@/components/HelloWorld.vue";

export default {
  name: "Home",
  components: {
    HelloWorld,
  },
};
</script>
