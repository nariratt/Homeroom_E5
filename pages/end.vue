<template>
  <div>
    <div class="end">
      <span class="txt1" style="color:#2f5061; font-size: 22px; font-weight: 600;">เกณฑ์การตัดผลกิจกรรมโฮมรุม</span><br>
      <span class="txt1" style="color:#2f5061; font-size: 22px; font-weight: 500;">เข้าร่วมกิจกรรมมากกว่า 60% = ผ่าน</span>
    </div>
    <!-- ------------------------------------------------------ -->
    <div class="tb_end">
      <v-responsive
        class="overflow-y-auto"
        max-height="470"
      >
        <!-- ---------------------------ตาราง-------------------------- -->
        <v-simple-table light>
          <thead>
            <tr>
              <th class="text-left">
                ที่
              </th>
              <th class="text-center">
                รายชื่อ
              </th>
              <th class="text-center">
                นามสกุล
              </th>
              <th class="text-center">
                เปอร์เซ็น
              </th>
              <th class="text-center">
                ผล
              </th>
            </tr>
          </thead>
          <tbody>
            <tr
              v-for="st in student"
              :key="st.id"
              class="text-left"
            >
              <td> {{ st.id }} </td>
              <td> {{ st.name }} </td>
              <td> {{ st.lname }} </td>
              <td>80%</td>
              <td style="background: #9cf0a3 ;">
                ผ่าน
              </td>
            </tr>
          </tbody>
        </v-simple-table>
      </v-responsive>
    </div>
    <div class="pos">
      <v-row
        align="center"
        justify="space-around"
      >
        <v-btn
          depressed
          color="#80e788"
          style="font-size: 18px;"
        >
          ผ่าน
        </v-btn>
        <span class="txt1" style="color:#20282c; font-size: 19px; font-weight: 600; margin-left: -3rem;">___ คน</span>
        <v-btn
          depressed
          color="#e78080"
          style="font-size: 18px;"
        >
          ไม่ผ่าน
        </v-btn>
        <span class="txt1" style="color:#20282c; font-size: 19px; font-weight: 600; margin-left: -3rem;">___ คน</span>
      </v-row>
    </div>
  </div>
</template>
<script>
export default {
  layout: 'ly_end',
  data () {
    return {
      student: [
        { id: '1', name: 'Teerapong', lname: ' Tejaluang' },
        { id: '2', name: 'Nareetat', lname: ' Kongsatree' },
        { id: '3', name: 'Atriwat', lname: ' Tawan' },
        { id: '4', name: 'Jeerawan', lname: ' Lalee' },
        { id: '5', name: 'Sunisa', lname: ' Madee' },
        { id: '6', name: 'Pantakan', lname: ' Manat' },
        { id: '7', name: 'Peerapon', lname: ' Ponsa' },
        { id: '8', name: 'Manita', lname: ' Maijan' },
        { id: '9', name: 'Supaporn', lname: ' A-santea' }
      ]
    }
  }
}
</script>
<style>
.bg {
  background: #f6f2e0 ;
}
.end{
    margin-top: 4rem;
}
.tb_end{
  margin-top: 10px;
}
.pos{
  margin-top: 2rem;
}
</style>
