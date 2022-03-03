<template>
  <div class="rounded-xl white text-center">
    <div class="txt01">
      <p>Page sign-up</p>
      <h1>Hello Teerapong</h1>
      <h1>Hello {{ name }} </h1>
      <h1>Hello {{ upperName }} </h1>
      <input type="text" :value="name"><br>
      <input v-model="name" type="text">
    </div>
  </div>
</template>

<script>
export default {
  data () {
    return {
      name: 'teera teja'
    }
  },
  computed: {
    upperName () {
      return this.name.toUpperCase()
    }
  }
}
</script>

<style>
.txt01{
    color: black;
}
</style>
