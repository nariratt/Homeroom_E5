<template>
  <v-container fluid>
    <center>
      <div class="wk">
        <v-btn
          class="btn1"
          style="height:50px; width:330px;"
          color="#fffbd7"
        >
          <span class="txt2" style="color:#578094; font-size: 20px;"> สัปดาห์ที่ 1 </span>
        </v-btn>
      </div>
      <!-- -------------------------------------- -->
      <div class="date">
        <span class="date" style="color:#4f89a7; font-size: 18px;"> วันที่ __ / __ / __ </span>
      </div>
      <!-------- แสดงผล ----------->
      <div class="show">
        <!----มา----->
        <div class="list_bt">
          <v-btn
            class="ma_bt"
            style="height:30px; width:260px;"
            color="#d4d5daa4"
          >
            <span class="ma" style="color:#4f89a7; font-size: 16px;">มา  __ คน</span>
          </v-btn>
        </div>
        <!----------->
        <!----ขาด----->
        <div class="sh">
          <v-btn
            class="kat_bt"
            style="height:30px; width:260px;"
            color="#fbf8db"
          >
            <span class="kat" style="color:#4f89a7; font-size: 16px;">ขาด __ คน</span>
          </v-btn>
        </div>
        <!----------->
        <!----ลา----->
        <div class="sh">
          <v-btn
            class="la_bt"
            style="height:30px; width:260px;"
            color="#d4d5daa4"
          >
            <span class="la" style="color:#4f89a7; font-size: 16px;">ลา __ คน</span>
          </v-btn>
        </div>
        <!----------->
        <!----กิจ----->
        <div class="sh">
          <v-btn
            class="git_bt"
            style="height:30px; width:260px;"
            color="#fbf8db"
          >
            <span class="git" style="color:#4f89a7; font-size: 16px;">กิจ __ คน</span>
          </v-btn>
        </div>
        <!----------->
        <!----คิดเป็น----->
        <div class="sh">
          <v-btn
            class="per_bt"
            style="height:30px; width:260px;"
            color="#c7f8d6e7"
          >
            <span class="per" style="color:#417494; font-size: 16px;">คิดเป็น __ %</span>
          </v-btn>
        </div>
      <!----------->
      </div>
      <!--------/ แสดงผล ----------->
      <!----ปุ่ม ถัดไป----->
      <a href="/list_name">
        <v-btn
          class="next_bt"
          style="height:33px; width:100px;"
          color="#4ba56d"
        >
          <span class="per" style="color:#e6e6e6; font-size: 16px;">รายละเอียด</span>
        </v-btn></a>
      <!-------------------->
      <div class="text">
        <span class="txt1" style="color:#2f5061; font-size: 20px;">วาระการโฮมรูม</span>
      </div>
      <!------------------ข้อความจากหน้าอัพโหลด--------------->
      <div class="wara">
        <v-card
          class="mx-auto"
          max-width="344"
          light
        >
          <v-card-text>
            <div
              style="color:#1c2b33; font-size: 17px; text-align: left;"
            >
              1. การเข้าร่วมกิจกรรมในช่วงโควิต<br>
              2. ระเบียบการแต่กาย<br>
              3. ความสะอาดของหน้าแผนก
            </div>
          </v-card-text>
        </v-card>
      </div>
      <!------------------/ ข้อความจากหน้าอัพโหลด--------------->
      <div class="text_ac">
        <span class="txt1" style="color:#2f5061; font-size: 20px;">ภาพกิจกรรม</span>
      </div>
      <div class="pic">
        <v-img src="/pic.jpg" style="border-radius : 20px ;" />
      </div>
    </center>
  </v-container>
</template>
<script>
export default {
  layout: 'ly_activity'
}
</script>

<style>
.bg {
  background: #f6f2e0 ;
}
.wk{
  margin-top: 4rem;
}
.date{
    margin-top: 2px;
}
.next_bt{
  margin-top: 6px;
  margin-right: -10rem;
}
.text{
  margin-top: 6px;
  margin-left: -13rem;
}
.text_ac{
  margin-top: 10px;
  margin-left: -15rem;
}
.pic{
  width: 290px;
  height: 70;
  padding-top: 5px;
}
</style>
