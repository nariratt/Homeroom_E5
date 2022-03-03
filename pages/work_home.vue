<template>
  <div>
    <center>
      <div class="logo">
        <v-img src="/college.png" />
      </div>
      <div class="txt1">
        <span style=" font-size: 25px;">วิทยาลัยเทคนิคชัยภูมิ</span>
      </div>
      <div class="e1">
        <v-btn
          class="btn1"
          style="height:80px;"
        >
          <span class="txt2" style="color:rgb(243, 241, 241); font-size: 20px;"> __ E1 </span>
        </v-btn>
      </div>
      <div class="e2">
        <v-btn
          class="btn2"
          style="height:80px;"
        >
          <span class="txt2" style="color:rgb(255, 255, 255); font-size: 20px;"> __ E5 </span>
        </v-btn>
      </div>
      <!-- ------------------------------------------------- -->
    </center>
  </div>
</template>
<script>
export default {
  layout: 'ly_home'
}
</script>

<style>
.bg {
  background: #f6f2e0 ;
}
.tt{
    margin-left: 10rem;
}
.logo{
  width: 120px;
  padding-top: 7rem;
}
.txt1{
    margin-top: 7px;
    color: rgb(172, 168, 168);
}
.btn1{
  font-weight: 300px;
  width: 200px;
  margin-top: 4rem;
  background: linear-gradient(to bottom,#605b91,#304c70);
}
.btn2{
  font-weight: 300px;
  width: 200px;
  margin-top: 4rem;
  background: linear-gradient(to bottom,#605b91,#304c70);
}
.e2{
  margin-top: -40px;
}
.ft{
    width: 26rem;
    background-color:#4B6587 ;
}
</style>
