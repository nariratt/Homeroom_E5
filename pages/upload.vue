<template>
  <v-container fluid>
    <div>
      <div class="tt">
        <span class="txt1" style="color:#2f5061; font-size: 22px;">วาระการโฮมรูม</span>
      </div>
      <!-- ---------------------- กรอกวาระ -------------------------- -->
      <div class="input">
        <v-row>
          <v-col
            cols="16"
            md="8"
          >
            <v-textarea
              solo
              name="input-7-4"
              label="วาระการโฮมรูม l"
              light
              height="200"
              style="font-size: 20px;"
            />
          </v-col>
        </v-row>
      </div>
      <!-- ------------------อัพรูป----------------- -->
      <div class="uppic">
        <v-btn
          class="up_bt"
          style="height:60px; width:390px;"
          light
        >
          <span class="ma" style="color:#4f89a7; font-size: 19px;">อัพโหลดรูปถ่าย</span>&nbsp;&nbsp;
          <v-icon class="ic" style="color:#358dbd; font-size: 30px;">
            mdi-image
          </v-icon>
        </v-btn>
      </div>
      <!-- --------ปุ่มอัพ------------ -->
      <div class="bt_up">
        <a href="/week">
          <v-btn
            color="success"
            fab
            x-large
            dark
          >
            <v-icon>mdi-cloud-upload</v-icon>
          </v-btn></a>
      </div>
    </div>
  </v-container>
</template>
<script>
export default {
  layout: 'ly_upload'
}

</script>
<style>
.bg {
  background: #f6f2e0 ;
}
.tt{
    margin-top: 3rem;
    margin-left: -16rem;
}
.input{
    margin-top: 5px;
}
.bt_up{
    margin-top: 3rem;
}
</style>
