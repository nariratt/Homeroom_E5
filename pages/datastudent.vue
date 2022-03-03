<template>
  <div class="rounded-xl white text-center">
    <div class="txt01">
      <!-- ----------------------------------------------------- -->
      <v-simple-table light>
        <thead>
          <tr>
            <th class="text-left">
              id
            </th>
            <th class="text-left">
              Name
            </th>
            <th class="text-left">
              Lastname
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
          </tr>
        </tbody>
      </v-simple-table>
    </div>
  </div>
</template>

<script>
export default {
  layout: 'la_student',
  data () {
    return {
      student: [
        { id: '63309010001', name: 'Teerapong', lname: 'Tejaluang' },
        { id: '63309010002', name: 'Nareetat', lname: 'Kongsatree' },
        { id: '63309010003', name: 'Atriwat', lname: 'Tawan' },
        { id: '63309010004', name: 'Jeerawan', lname: 'Lalee' },
        { id: '63309010005', name: 'Supaporn', lname: 'A-santea' }
      ]
    }
  },
  computed: {
    upperName () {
      return this.name.toUpperCase()
    }
  }
}
</script>

<style>
.txt01{
    color: black;
}
</style>
