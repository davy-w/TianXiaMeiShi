<template>
 <div class="content fade-in" :style="contentStyleObj">
    <login class="login"></login>
    <Navbar class="navbar"></Navbar>
  </div>
</template>
<script>
  //引入子组件
  import Login from './Login.vue'
  import Navbar from './Navbar.vue'
  export default {
  data () {
  　　return {
        contentStyleObj:{height:''},
  　　}
  },
  methods:{
    getHeight(){
      this.contentStyleObj.height=window.innerHeight+'px';
    },  
    },
  created(){
      window.addEventListener('resize', this.getHeight);
      this.getHeight();
    },
    destroyed(){
      window.removeEventListener('resize', this.getHeight)
    },
    components:{
      //注册子组件
      //给子组件起名字
      "login":Login,
      Navbar
    }
  }
</script>
<style scoped>
  .content{
    background:url(../../assets/bgimg/1.jpg) no-repeat;
    background-size:cover;
    background-position:center;
    display:flex;
    align-items:center;
    justify-content:center;
    display:relative;
  }
  .navbar{
    dispaly:fixed;
    width:100%;
    top:0px;
  }
  @keyframes myAnimate{
    0%{
      background:url(../../assets/bgimg/1.jpg) no-repeat;
      background-size:cover;
      background-position:center;
    }
    25%{
      background:url(../../assets/bgimg/2.jpg) no-repeat;
      background-size:cover;
      background-position:center;
    }
    50%{
      background:url(../../assets/bgimg/3.jpg) no-repeat;
      background-size:cover;
      background-position:center;
    }
    75%{
      background:url(../../assets/bgimg/4.jpg) no-repeat;
      background-size:cover;
      background-position:center;
    }
    100%{
      background:url(../../assets/bgimg/1.jpg) no-repeat;
      background-size:cover;
      background-position:center;
    }
  }
  .fade-in{
    animation:myAnimate 20s linear;
    animation-iteration-count:infinite;
  }

</style>