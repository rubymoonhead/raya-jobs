<template>
  <div>
    <div id="nav">
      <router-link to="/">Home</router-link>
      <router-link :to="{ name: 'About' }">About</router-link>
      <router-link :to="{ name: 'Jobs' }">Doggo Jobs</router-link>
    </div>

    <button @click="redirect">Redirect</button>
    <button @click="back">Go Back</button>
    <button @click="forward">Go Forward</button>

    <router-view />
  </div>
</template>

<script>
export default {
  methods: {
    redirect() {
      this.$router.push({ name: 'Home' })
    },
    back() {
      this.$router.go(-1);
    },
    forward() {
      this.$router.go(1);
    },
  },
};
</script>

<style>
@import url('https://fonts.googleapis.com/css2?family=Poppins&family=Roboto+Mono&display=swap');

router-view {
  background-color: #112d4e;
}

#app {
  font-family: 'Roboto Mono', monospace;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #f9f7f7;
  background-color: #112d4e;
  padding: 5rem 10rem;
}

#nav {
  padding: 30px;
}
#nav a {
  font-weight: bold;
  color: #f9f7f7;
  background-color: #112d4e;
  text-decoration: none;
  padding: 10px;
  border-radius: 4px;
}
#nav a.router-link-exact-active {
  color: #f9f7f7;
  background-color: #d72323;
}
button {
  color: #112d4e;
  background-color: #dbe2ef;
  font-family: 'Poppins', sans-serif;
  margin: 0 10px;
  padding: 10px;
  border: none;
  border-radius: 4px;
}
button:hover {
  background: #f9f7f7;
  cursor: pointer;
}

</style>
