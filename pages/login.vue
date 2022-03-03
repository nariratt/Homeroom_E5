<template>
  <center>
    <v-container>
      <div class="logo">
        <v-img src="/Logo.png" style="border-radius : 20px ;" />
      </div>
      <div class="hm">
        HOMEROOM
      </div>
      <v-form>
        <v-row justify="center" align="center">
          <div class="olt">
            <div class="1ss">
              <v-text-field
                v-model="email"
                label="Email"
                placeholder="Email"
                outlined
                dense
                light
              />
            </div>
          </div>
        </v-row>
        <v-row justify="center" align="center">
          <div class="2ss">
            <v-text-field
              v-model="passwd"
              label="Passsword"
              placeholder="Passsword"
              outlined
              dense
              light
            />
          </div>
        </v-row>
      </v-form>
      <v-btn
        class="btn1"
        height="45"
      >
        <div class="txt1">
          <a href="/home">
            <span style=" font-size: 20px; font-weight: 600; color:aliceblue" @click="onSave">เข้าสู่ระบบ </span></a>
        </div>
      </v-btn>
      <div class="txt2">
        <span style=" font-size: 18px;">ลืมรหัสผ่านใช่หรือไม่ ?</span>
      </div>
    </v-container>
  </center>
</template>
<script>
export default {
  data: () => ({
    email: '',
    passwd: '',
    dialog: false,
    dialog_false: false
  }),
  methods: {
    async onSave () {
      console.log('onSave')
      // console.log('user:', this.email)
      // console.log('pass:', this.passwd)
      const res = await fetch('http://localhost:7001/login?email=' +
      this.email + '&passwd=' + this.passwd)
      const result = await res.json()

      // const data = await res.json()
      try {
        // console.log('data=', result.data)
        if (result.status === 1) {
          console.log('Login ok')
          this.dialog = true
          setInterval(() => {
            this.dialog = false
            this.$router.push('/connect')
          }, 1000)
        } else {
          this.dialog_false = true
          setInterval(() => {
            this.dialog_false = false
            this.$router.push('/login')
          }, 1000)
        }//  end if
      } catch (error) {
        console.log('Error Login')
      }
    }
  }
}
</script>

<style>
.logo{
  width: 120px;
  padding-top: 2rem;
  margin-bottom: 5px;
}
.hm{
  font-family: 'Righteous', sans-serif;
  font-size: 20px;
  font-weight: 600;
  color: #4B6587 ;
}
.v-text-field--outlined fieldset{
  height: 55px;
  border-radius: 5px;
  background: #fff9dc;
  border: none;
  box-shadow: #acada5 0.1em 0.2em;
}
.v-text-field--outlined label{
    font-size: 16px;
    margin-left: 3px;
    margin-top: 5px;
    color: rgb(98, 96, 96) !important;
}
.olt{
    margin-top: 3rem;
}
.btn1{
  width: 160px;
  height: 1160px;
  margin-top: 4rem;
  background: linear-gradient(to bottom,#605b91,#304c70);
}
.txt2{
    margin-top: 5rem;
    color: #000;
    color: #4B6587 ;
}
</style>
