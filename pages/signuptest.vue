<template>
  <div class="text-center">
    <v-dialog
      v-model="dialog"
      width="500"
    >
      <v-card>
        <v-card-title class="text-h5 blue lighten-2">
          Status Login
        </v-card-title>

        <v-card-text>
          LOGIN OK
        </v-card-text>
      </v-card>
    </v-dialog>
    <div>
      <div class="text-center">
        <v-dialog
          v-model="dialog_false"
          width="500"
        >
          <v-card>
            <v-card-title class="text-h5 red lighten-2 ">
              Status Login
            </v-card-title>

            <v-card-text>
              LOGIN ERROR
            </v-card-text>

            <v-divider />

            <v-card-actions>
              <v-spacer />
              <v-btn
                color="primary"
                text
                @click="dialog_false = false"
              >
                Cancel
              </v-btn>
            </v-card-actions>
          </v-card>
        </v-dialog>
        <div>
          <v-card
            elevation="3"
            light
            class="box"
          >
            <v-form>
              <p>Sign up your bank account</p>
              <v-text-field
                v-model="username"
                label="Your Name"
                outlined
                dense
                style="padding: 0px 20px 0px 20px;"
              />
              <v-text-field
                v-model="bacount"
                label="Bank Account"
                outlined
                dense
                style="padding: 0px 20px 0px 20px;"
              />
              <v-text-field
                v-model="mobile"
                label="Moblie Phone Number"
                outlined
                dense
                style="padding: 0px 20px 0px 20px;"
              />
              <v-text-field
                v-model="email"
                label="Email"
                outlined
                dense
                style="padding: 0px 20px 0px 20px;"
              />
              <v-text-field
                v-model="passwd"
                label="Password"
                type="password"
                outlined
                dense
                style="padding: 0px 20px 10px 20px;"
                append-icon="mdi-eye"
              />
              <div class="mess">
                Use 6 characters with a mix of numbers and letters
              </div>
              <v-row>
                <div class="check">
                  <v-checkbox
                    type="checkbox"
                    name="checkbox"
                    m-model="chk"
                    color="blue darken-4"
                    value="black"
                    label="By signin up,you agree to
              Bank's Term of Use & Privacy Policy"
                  />
                </div>
              </v-row>
              <v-row>
                <v-col class="d-flex justify-center ">
                  <v-btn class="btn1" @click="Save">
                    <span class="txt1">Sign Up</span>
                  </v-btn>
                  <p> or </p>
                  <v-btn
                    class="ma-2"
                    outlined
                    color="indigo"
                    onclick="Clear"
                  >
                    CANCLE
                  </v-btn>
                </v-col>
              </v-row>
              <div class="signed">
                Already signed up?
                <nuxt-link to="/signup">
                  Log in
                </nuxt-link>
              </div>
            </v-form>
          </v-card>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import axios from 'axios'
export default {
  data: () => ({
    username: '',
    bacount: '',
    mobile: '',
    email: '',
    passwd: '',
    chk: '',
    dialog: false,
    dialog_false: false
  }),
  methods: {
    async Save () {
      const std = {
        username: this.username,
        bacount: this.bacount,
        mobile: this.mobile,
        email: this.email,
        passwd: this.passwd,
        chk: this.chk
      }
      console.log('user:', std)
      const res = await axios.post('http://localhost:7001/save', std)
      console.log(res.data)
      try {
        if (res.data.status > 0) {
          console.log('บันทึกสำเร็จ')
          this.dialog = true
          setInterval(() => {
            this.dialog = false
          }, 3500)
        }
      } catch (error) {
        console.log('Error Login')
        this.dialog_false = true
        setInterval(() => {
          this.dialog_false = false
        }, 3500)
      } this.dialog_false = true
      setInterval(() => {
        this.dialog_false = false
      }, 3500)
    }
  }
}
</script>
<style>

.box{
  margin: 20px;
  font-family: sans-serif;
}
p{
  color: rgb(56, 142, 255);
  padding: 20px;

}
.mess{
  color: rgb(56, 142, 255);
  font-family: sans-serif;
}
.signed{
  color: rgb(56, 142, 255);
  font-family: sans-serif;
}
.v-text-field--outlined fieldset{
  color: #27272c !important;
}
.v-text-field--outlined label{
  color: #313136b0 !important;
}
.v-checkbox--label{
  color: #27272c !important;
}
.btn1{
  background: linear-gradient(to bottom,#ffeb3b,#ffc107);
  margin-top: 7px;
}
.txt1{
  color: black;
  font-family: sans-serif;
}
.log{
  color: cornflowerblue;
}
.check{
  padding-left: 35px;
  margin-top: 10px;
}
.check2{
  font-size: 13px;
  margin-top: 5px;
  text-align: left;
}
.lbl{
  color:black;
  font-size: 12px;
}

</style>
