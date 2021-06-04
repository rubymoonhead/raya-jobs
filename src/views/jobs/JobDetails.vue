<template>
  <div v-if="job"><!--output job if true-->
    <h1>{{ job.title }}</h1>
    <p>The Job ID is {{ id }}</p>
    <p class="job-details">{{ job.details }}</p>
  </div>
  <div v-else><!--otherwise do this-->
    <p>Loading Doggo job details ... </p>
  </div>
  
</template>

<script>
export default {
  props: ['id'],
  data() {
    return {
      job: null
    }
  },
  mounted() {/*mounted hook to fetch data*/
    fetch('http://localhost:3000/jobs/' + this.id)/*fetching a single job*/
      .then(res => res.json())
      .then(data => this.job = data)
      .catch(err => console.log(err.message))
  }
}
</script>

<style>
@import url('https://fonts.googleapis.com/css2?family=Poppins&family=Roboto+Mono&display=swap');

.job-details {
  text-align: justify;
  text-justify: inter-word;
}
</style>