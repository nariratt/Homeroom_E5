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
        <v-card
          class="mx-auto"
          max-width="344"
          light
          style="border-radius : 15px ;"
        >
          <v-card-text>
            <div>โปรดกรอกข้อมูล ให้ครบทุก Field</div>
            <!-- -----------------field---------------- -->
            <v-row justify="center" align="center">
              <div class="olt">
                <div class="1ss">
                  <v-text-field
                    label="ID card"
                    placeholder="รหัสประจำตัวประชาชน"
                    filled
                    rounded
                    dense
                    light
                    style="width: 280px;"
                  />
                </div>
              </div>
            </v-row>
            <v-row justify="center" align="center">
              <div class="ss">
                <v-text-field
                  label="username"
                  placeholder="ชื่อผู้ใช้"
                  filled
                  rounded
                  dense
                  light
                  style="width: 280px;"
                />
              </div>
            </v-row>
            <v-row justify="center" align="center">
              <div class="ss">
                <v-text-field
                  label="password"
                  placeholder="รหัสผ่าน"
                  filled
                  rounded
                  dense
                  light
                  style="width: 280px;"
                />
              </div>
            </v-row>
          </v-card-text>
          <v-card-actions>
            <v-btn
              text
              color="teal accent-4"
              @click="reveal = true"
            >
              Learn More
            </v-btn>
          </v-card-actions>

          <v-expand-transition>
            <v-card
              v-if="reveal"
              class="transition-fast-in-fast-out v-card--reveal"
              style="height: 100%;"
            >
              <v-card-text class="pb-0">
                <p>uername : ใช้ในการล็อกอินเข้าระบบ</p>
                <p>password : ควรเป็นตัวเลขอย่างน้อย 6 หลัก</p>
              </v-card-text>
              <v-card-actions class="pt-0">
                <v-btn
                  text
                  color="teal accent-4"
                  @click="reveal = false"
                >
                  Close
                </v-btn>
              </v-card-actions>
            </v-card>
          </v-expand-transition>
        </v-card>
        <v-btn
          class="btn1"
          height="45"
        >
          <div class="txt1">
            <span style=" font-size: 20px; font-weight: 600;">SIGN UP </span>
          </div>
        </v-btn>
      </v-form>
      <!-- ------------ปิดฟอร์ม------------ -->
    </v-container>
  </center>
</template>
<script>
export default {
  data: () => ({
    reveal: false
  })
}
</script>
<style>
.logo{
  width: 80px;
  padding-top: 1rem;
  margin-bottom: 5px;
}
.hm{
  font-family: 'Righteous', sans-serif;
  font-size: 18px;
  font-weight: 600;
  color: #4B6587 ;
  margin-bottom: 2rem;
}
.olt{
    margin-top: 2rem;
}
.btn1{
  width: 160px;
  height: 1160px;
  margin-top: 4rem;
  background: linear-gradient(to bottom,#605b91,#304c70);
}
.ss{
    margin-top: -10px;
}
</style>
