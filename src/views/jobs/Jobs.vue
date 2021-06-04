<template>
  <div>
    <h1>Doggo Jobs</h1>
      <div v-if="jobs.length">
        <div v-for="job in jobs" :key="job.id" class="job">
          <router-link :to="{ name: 'JobDetails', params: { id: job.id }}"> 
            <h2>{{ job.title }}</h2>
            </router-link>
        </div>
      </div>
      <div v-else>
        <p>Loading jobs ... </p>
      </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      jobs: [],
    }
  },
  mounted() {/*life cycle hook*/
    fetch('http://localhost:3000/jobs')/*fetch end point (json server)*/ 
      .then(res => res.json())
      .then(data => this.jobs = data)
      .catch(err => console.log(err.message))
  }
};
</script>

<style>
@import url('https://fonts.googleapis.com/css2?family=Poppins&family=Roboto+Mono&display=swap');

.job h2 {
  background: #dbe2ef;
  padding: 20px;
  border-radius: 10px;
  margin: 10px auto;
  max-width: 600px;
  cursor: pointer;
  color: #3f72af;
}
.job h2:hover {
  background: #f9f7f7;
}
.job a {
  text-decoration: none;
}
</style>