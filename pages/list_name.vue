<template>
  <div>
    <v-container>
      <div class="list">
        <v-responsive
          class="overflow-y-auto"
          max-height="600"
        >
          <!-- ---------------มา---------------- -->
          <div class="ma">
            <v-btn
              class="btn1"
              style="height:40px; width:390px;"
              color="#76cc9a"
              solo
              dense
              filled
            >
              <span class="txt2" style="color:#ffffff; font-size: 18px;"> นักศึกษาที่ มา เรียนทั้งหมด __ คน </span>
            </v-btn>
            <div class="tb_list">
              <v-simple-table light>
                <tbody>
                  <tr
                    v-for="st in student"
                    :key="st.id"
                    class="text-left"
                  >
                    <td>เลขที่ {{ st.id }} </td>
                    <td> {{ st.name }} </td>
                    <td> {{ st.lname }} </td>
                  </tr>
                </tbody>
              </v-simple-table>
            </div>
          </div>
          <!-- -------------------/มา------------------------ -->
          <!-- ---------------ขาด---------------- -->
          <div class="kat">
            <v-btn
              class="btn1"
              style="height:40px; width:390px;"
              color="#e46161"
              solo
              dense
              filled
            >
              <span class="txt2" style="color:#ffffff; font-size: 18px;"> นักศึกษาที่ ขาด เรียนทั้งหมด __ คน </span>
            </v-btn>
            <div class="tb_ma">
              <v-simple-table light>
                <tbody>
                  <tr
                    v-for="st in student"
                    :key="st.id"
                    class="text-left"
                  >
                    <td>เลขที่ {{ st.id }} </td>
                    <td> {{ st.name }} </td>
                    <td> {{ st.lname }} </td>
                  </tr>
                </tbody>
              </v-simple-table>
            </div>
          </div>
          <!-- ---------------ลา---------------- -->
          <div class="la">
            <v-btn
              class="btn1"
              style="height:40px; width:390px;"
              color="#f09d59"
              solo
              dense
              filled
            >
              <span class="txt2" style="color:#ffffff; font-size: 18px;"> นักศึกษาที่ ลา เรียนทั้งหมด __ คน </span>
            </v-btn>
            <div class="tb_ma">
              <v-simple-table light>
                <tbody>
                  <tr
                    v-for="st in student"
                    :key="st.id"
                    class="text-left"
                  >
                    <td>เลขที่ {{ st.id }} </td>
                    <td> {{ st.name }} </td>
                    <td> {{ st.lname }} </td>
                  </tr>
                </tbody>
              </v-simple-table>
            </div>
          </div>
          <!-- ---------------สาย---------------- -->
          <div class="say">
            <v-btn
              class="btn1"
              style="height:40px; width:390px;"
              color="#71b8f1"
              solo
              dense
              filled
            >
              <span class="txt2" style="color:#ffffff; font-size: 18px;"> นักศึกษาที่ สาย เรียนทั้งหมด __ คน </span>
            </v-btn>
            <div class="tb_ma">
              <v-simple-table light>
                <tbody>
                  <tr
                    v-for="st in student"
                    :key="st.id"
                    class="text-left"
                  >
                    <td>เลขที่ {{ st.id }} </td>
                    <td> {{ st.name }} </td>
                    <td> {{ st.lname }} </td>
                  </tr>
                </tbody>
              </v-simple-table>
            </div>
          </div>
          <!-- ---------------/ สาย---------------- -->
        </v-responsive>
      </div>
    </v-container>
  </div>
</template>
<script>
export default {
  layout: 'ly_list_name',
  data () {
    return {
      student: [
        { id: '1', name: 'Teerapong', lname: ' Tejaluang' },
        { id: '2', name: 'Nareetat', lname: ' Kongsatree' },
        { id: '3', name: 'Atriwat', lname: ' Tawan' }
      ]
    }
  }
}
</script>
<style>
.bg {
  background: #f6f2e0 ;
}
.list{
    margin-top: 4rem;
}
.tb_list{
    margin-top: 5px;
}
.kat{
    margin-top: 1rem;
}
.la{
    margin-top: 1rem;
}
.say{
    margin-top: 1rem;
}
</style>
