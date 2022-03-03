<template>
  <v-container>
    <center>
      <div>
        <!-- ---------------button แสดงผลรายงาน---------------- -->
        <div class="b_sh">
          <v-btn
            class="btn1"
            style="height:90px; width:320px;"
            color="#fffbd7"
          >
            <span class="txt1" style="color:#4f89a7; font-size: 21px;"> รายงานผลการเข้าโฮมรูมประจำ</span>
            <span class="txt2" style="color:#4f89a7; font-size: 21px;"><br><br>สัปดาห์ที่ __ </span>
          </v-btn>
        </div>
        <!-- -------------------------------------- -->
        <div class="date">
          <span class="date" style="color:#4f89a7; font-size: 21px;"> วันที่ __ / __ / __ </span>
        </div>
        <!-------- แสดงผล ----------->
        <div class="show">
          <!----มา----->
          <div class="list_bt">
            <v-btn
              class="ma_bt"
              style="height:50px; width:260px;"
              color="#d4d5daa4"
            >
              <span class="ma" style="color:#4f89a7; font-size: 21px;">มา  __ คน</span>
            </v-btn>
          </div>
          <!----------->
          <!----ขาด----->
          <div class="sh">
            <v-btn
              class="kat_bt"
              style="height:50px; width:260px;"
              color="#fbf8db"
            >
              <span class="kat" style="color:#4f89a7; font-size: 21px;">ขาด __ คน</span>
            </v-btn>
          </div>
          <!----------->
          <!----ลา----->
          <div class="sh">
            <v-btn
              class="la_bt"
              style="height:50px; width:260px;"
              color="#d4d5daa4"
            >
              <span class="la" style="color:#4f89a7; font-size: 21px;">ลา __ คน</span>
            </v-btn>
          </div>
          <!----------->
          <!----สาย----->
          <div class="sh">
            <v-btn
              class="git_bt"
              style="height:50px; width:260px;"
              color="#fbf8db"
            >
              <span class="git" style="color:#4f89a7; font-size: 21px;">สาย __ คน</span>
            </v-btn>
          </div>
          <!----------->
          <!----คิดเป็น----->
          <div class="sh">
            <v-btn
              class="per_bt"
              style="height:50px; width:260px;"
              color="#c7f8d6e7"
            >
              <span class="per" style="color:#417494; font-size: 21px;">คิดเป็น __ %</span>
            </v-btn>
          </div>
          <!----------->
        </div>
        <!--------/ แสดงผล ----------->
        <!----ปุ่ม ถอดไป----->
        <div class="next">
          <a href="/upload">
            <v-btn
              class="next_bt"
              style="height:40px; width:100px;"
              color="#4ba56d"
            >
              <span class="per" style="color:#e6e6e6; font-size: 19px;">ถัดไป</span>
            </v-btn></a>
        </div>
        <!----------->
      </div>
    </center>
  </v-container>
</template>
<script>
export default {
  layout: 'ly_report'
}
</script>
<style>
.bg {
  background: #f6f2e0 ;
}
.b_sh{
  padding-top: 4rem;
}
.txt1{
    margin-left: -5rem;
    margin-top: -1rem;
}
.txt2{
    margin-left: -12rem;
    padding-bottom: 1rem;
}
.date{
    margin-top: 1rem;
}
.show{
    margin-top: 1rem;
}
.sh{
  margin-top: 10px;
}
.per_bt{
  color: rgb(170, 180, 201);
}
.next{
  padding-top: 3rem;
}
</style>
