<template>
  <v-app>
    <div class="bg darken-2 text-center">
      <v-row>
        <v-col>
          <v-app-bar
            absolute
            color="#4B6587"
          >
            <a href="/report">
              <v-btn icon>
                <v-icon>mdi-chevron-left</v-icon>
              </v-btn></a>
            <div class="title">
              <v-toolbar-title>อัพโหลด</v-toolbar-title>
            </div>
          </v-app-bar>
          <!-- -------------------------app-bar------------------------- -->
          <nuxt />
        </v-col>
      </v-row>
      <v-row>
        <v-bottom-navigation
          :value="value"
          grow
          absolute
          background-color="#4B6587"
          color="#ffff"
          style="padding-top: 10px;"
        >
          <a href="/home" style="padding-right: 10px;">
            <v-btn>
              <span style="color:aliceblue">Home</span>
              <v-icon style="color:aliceblue">mdi-home-variant-outline</v-icon>
            </v-btn></a>

          <a href="/list" style="padding-right: 10px;">
            <v-btn>
              <span style="color:aliceblue">Check</span>
              <v-icon style="color:aliceblue">mdi-clipboard-edit-outline</v-icon>
            </v-btn></a>

          <a href="/report" style="padding-right: 10px;">
            <v-btn>
              <span style="color:aliceblue">Report</span>
              <v-icon style="color:aliceblue">mdi-folder-outline</v-icon>
            </v-btn></a>

          <a href="/end" style="padding-right: 10px;">
            <v-btn>
              <span style="color:aliceblue">
                Process</span>
              <v-icon style="color:aliceblue">mdi-restore</v-icon>
            </v-btn></a>
        </v-bottom-navigation>
      </v-row>
    </div>
  </v-app>
</template>

<script>
export default {
  data: () => ({ value: 1 })
}
</script>
<style>
.bgcard{
    background-color: rgb(128, 118, 224);
}
.title{
    color: azure;
    margin-left: 7rem;
}
.ft{
    width: 50rem;
    background-color:#4B6587 ;
}
</style>
