import Vue from 'vue'
import App from './App.vue'
import Quotes from './Quotes.vue'

new Vue({
  el: '#app',
  data : {
	  msg: "HEllo"
  },
  components: {Quotes}
})

