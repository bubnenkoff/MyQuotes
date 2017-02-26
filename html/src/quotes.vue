<template>
    <div>
      <div class="RandomQuoteBlock" style="justify-content:center"><h3>Random Quote Here</h3></div>
      <div class="SingleContainer" >
          <div class="SingleQuiteBody" v-for="quote in quotes">
              {{quote.quote}}
              {{myRandom}}
            <div class="SingleQuiteVote">
              <button>+</button> <button>&#8211;</button>
            </div>
          </div>

      </div>
    </div>
</template>

<script>
export default {
  name: 'quotes',
  data () {
    return {
      quotes: ''
    }
  },
 async mounted()
  {
    try
    {
      var url = "/api/quotes";
      let response = await fetch(url);
      this.quotes = await response.json();
    }
    catch (e)
    {
      console.log("[ERROR] Can't get quotes list");
      console.log(e.data.message);
    }
  },

  methods: {

  },

  computed: {
    // myRandom: Math.random() * (1 - 15)
    myRandom: () => {Math.floor((Math.random() * 10) + 1);}
  }



}
</script>