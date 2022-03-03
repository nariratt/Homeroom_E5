<template>
  <div>
    <!-- <div class="box"> -->
    <v-card
      class="card"
      light
    >
      <v-row>
        <v-col class="sign justify-center ">
          sign up yourbank account
        </v-col>
      </v-row>
      <v-row>
        <v-col class="btninput justify-center ">
          <div class="olt">
            <v-text-field
              label="Your name"
              placeholder="Your name"
              outlined
              dense
            />
          </div>
          <div class="ss">
            <v-text-field
              label="Bank account"
              placeholder="Bank account"
              outlined
              dense
            />
          </div>
          <div class="ss">
            <v-text-field
              label="Mobile phon number"
              placeholder="Mobile phon number"
              outlined
              dense
            />
          </div>
          <div class="ss">
            <v-text-field
              label="Email"
              placeholder="Email"
              outlined
              dense
            />
          </div>
          <div class="ss">
            <v-text-field
              label="Passsword"
              placeholder="Passsword"
              append-icon="mdi-eye"
              outlined
              dense
            />
          </div>
        </v-col>
      </v-row>
      <v-row>
        <v-col class="user justify-center ">
          Use 6 characters with a mix of numbers <br>
          and letters
        </v-col>
      </v-row>
      <v-row>
        <div class="check">
          <v-checkbox
            color="black"
            value="black"
          />
        </div>
        <div class="check2">
          <p>
            By signin up,you agree to<br>
            Bank's Term of Use & Privacy Policy.
          </p>
        </div>
      </v-row>
      <v-row>
        <div class="btnlog">
          <v-btn
            class="btn1"
            style="height:30px;"
          >
            <span class="txt1" style="color:black;"> SING UP </span>
          </v-btn>
          &nbsp; or &nbsp;
          <v-btn
            class="btn2"
            style="height:30px;"
          >
            <span class="txt2" style="color:black;"> CANCEL </span>
          </v-btn>
        </div>
      </v-row>
      <v-row>
        <div class="log">
          Already signed <a href="#"> Log in</a><br><br>
        </div>
      </v-row>
    </v-card>
  </div>
  <!-- </div> -->
</template>
<style>
.box{
  color: #000;
  margin-top: 10px;
  background-color: beige;
  padding: 5px;
  border-radius: 10px;
}
.sign{
    color: rgb(64, 26, 201);
    font-size: 15px;
    margin-top: 23px;
    margin-bottom: 15px;
}
.v-text-field--outlined fieldset{
    margin-left: 3px;
    color: #000000 !important;
    width: 267px;
}
.v-text-field--outlined label{
    font-size: 13px;
    margin-left: 3px;
    color: #000 !important;
}
.olt{
    color: #000;
    margin-left: 8px;
    margin-top: -5px;
}
.ss{
  margin-top: -13px;
  margin-left: 8px;
}
.user{
  color: rgb(64, 26, 201);
    font-size: 13px;
    margin-top: -30px;
    margin-bottom: 15px;
    text-align: left;
    margin-left: 26px;
}
.check{
  padding-left: 35px;
  margin-top: -30px;
}
.check2{
  font-size: 13px;
  margin-top: -15px;
  text-align: left;
}
.btnlog{
  margin-left: 40px;
}
.btn1{
  background: linear-gradient(to bottom,#FFEB3B,#FFC107);
}
.btn2{
  background: linear-gradient(to bottom,#f1f1ea,#eeede9);
}
.log{
  margin-top: 10px;
  margin-left: 85px;
  font-size: 14px;
}
.login{
  color: rgb(29, 26, 165);
  border: #000000;
}
.card{
  margin-top: 10px;
  margin-bottom: 10px;
}
</style>
