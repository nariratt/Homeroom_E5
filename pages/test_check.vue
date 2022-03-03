<template>
  <div>
    <div class="list">
      <v-autocomplete
        v-model="value"
        :items="week"
        dense
        filled
        dark
        label="สัปดาห์ที่"
      />

      <div class="rounded-xl white text-center">
        <div class="txt01">
          <h3>ตารางแสดงข้อมูลนักศึกษา</h3>

          <v-simple-table
            fixed-header
            height="400px"
            light
          >
            <template #default>
              <thead>
                <tr>
                  <th class="text-center">
                    ID
                  </th>
                  <th colspan="10" class="text-center">
                    สถานะเข้าเรียน
                  </th>
                  <!-- <th class="text-center">
                Surname
              </th> -->
                </tr>
              </thead>
              <tbody>
                <tr
                  v-for="st in student"
                  :key="st.id"
                >
                  <td>{{ st.r_id }}</td>
                  <td>
                    <v-radio-group
                      v-model="study"
                      row
                    >
                      <v-radio
                        label="มา"
                        color="info"
                        value="1"
                      />
                      <v-radio
                        label="ขาด"
                        color="red"
                        value="0"
                      />
                      <v-radio
                        label="ลา"
                        color="orange"
                        value="2"
                      />
                      <v-radio
                        label="สาย"
                        color="primary"
                        value="3"
                      />
                    </v-radio-group>
                  </td>

                  <!-- <td>{{ st.fullname }}</td>
              <td>{{ st.email }}</td> -->
                  <!-- <v-btn @click="edit(st.r_id)">
                EDIT
              </v-btn>
              <v-btn @click="del(st.r_id)">
                DEL
              </v-btn> -->
                </tr>
              </tbody>
            </template>
          </v-simple-table>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  layout: 'ly_list',
  data () {
    return {
      username: '',
      baccount: '',
      moblile: '',
      email: '',
      passwd: '',
      student: [
        { r_id: '6339030001', fullname: 'sutaluk', email: 'Test1' },
        { r_id: '6339030002', fullname: 'Teerapong', email: 'Test2' },
        { r_id: '6339030003', fullname: 'Wanaruk', email: 'Test3' },
        { r_id: '6339030004', fullname: 'Wanaruk', email: 'Test4' },
        { r_id: '6339030005', fullname: 'Wanaruk', email: 'Test5' },
        { r_id: '6339030006', fullname: 'sutaluk', email: 'Test1' },
        { r_id: '6339030007', fullname: 'Teerapong', email: 'Test2' },
        { r_id: '6339030008', fullname: 'Wanaruk', email: 'Test3' },
        { r_id: '6339030009', fullname: 'Wanaruk', email: 'Test4' },
        { r_id: '6339030010', fullname: 'Wanaruk', email: 'Test5' }
      ],
      items: [
        { title: 'Click Me' },
        { title: 'Click Me' },
        { title: 'Click Me' },
        { title: 'Click Me' }
      ],
      week: ['1', '2', '3', '4'],
      value: null
    }
  },
  computed: {
    upperName () {
      return this.name.toUpperCase()
    }
  },
  created () {
    this.Show()
  },
  methods: {
    async Show () {
      console.log('show data')
      const res = await fetch('http://localhost:7001/lists')
      const data2 = await res.json()
      this.student = data2.datas
      console.log(data2.datas)
    },
    edit (rid) {
      console.log('rid=', rid)
      this.$router.push('edit_std?rid=' + rid)
    }
  }
}
</script>

<style>
    .bg{
        background: #f6f2e0 ;
    }
    .txt01 {
        color: rgb(21, 79, 240);
    }
    .bgtable1{
        background-color:whitesmoke;
    }
    h3 {
        text-align: center;
        margin-top: 15px;
        margin-bottom:10px;
    }
    .list{
        margin-top: 4rem;
    }
</style>
