<template>
  <v-container>
    <div>
      <div class="tech">
        <v-card
          color="#7d9ecaa6"
          height="130"
        >
          <div class="logo">
            <v-img src="/defult.png" style="border-radius : 50px ;" />
          </div>
          <div class="name">
            <span style="color: azure; font-size: 20px;">คุณครู________   _________</span>
          </div>
          <div class="ca">
            <span style="color: azure; font-size: 20px;">ครูประจำชั้น___</span>
          </div>
        </v-card>
      </div>
      <!-- ---------------ปุ่มเช็กชื่อ---------------- -->
      <div class="btt">
        <div class="b_name">
          <a href="/check">
            <v-btn
              class="btn1"
              style="height:70px; width:300px;"
              color="#fffbd7"
            >
              <span class="txt2" style="color:#4B6587; font-size: 20px;"> เช็กชื่อนักเรียน/นักศึกษา </span>
            </v-btn></a>
        </div>
        <!-- -----------------ปุ่มรายงาน--------------------- -->
        <div class="b_report">
          <a href="/week">
            <v-btn
              class="btn1"
              style="height:70px; width:300px;"
              color="#fffbd7"
            >
              <span class="txt2" style="color:#4B6587; font-size: 20px;"> รายงานผลประจำสัปดาห์ </span>
            </v-btn></a>
        </div>
        <!-- -------------------ปุ่มผลกิจกรรม------------------ -->
        <div class="b_pass">
          <a href="/end">
            <v-btn
              class="btn1"
              style="height:70px; width:300px;"
              color="#fffbd7"
            >
              <span class="txt2" style="color:#4B6587; font-size: 20px;"> ผลกิจกรรมโฮมรูม </span>
            </v-btn></a>
        </div>
      </div>
    </div>
  </v-container>
</template>
<script>
export default {
  layout: 'ly_list'
}
</script>
<style>
.bg {
  background: #f6f2e0 ;
}
.tech{
  padding-top: 6rem;
}
.logo{
  height: 100px;
  width: 100px;
  padding-top: 20px;
  padding-left: 10px;
}
.name{
  margin-top: -50px;
  padding-left: 2rem;
}
.btt{
  padding-top: 2rem;
}
.b_name{
  padding-top: 1rem;
}
.b_report{
  padding-top: 2rem;
}
.b_pass{
  padding-top: 2rem;
}
</style>
