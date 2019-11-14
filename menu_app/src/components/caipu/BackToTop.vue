<template>
  <div>
    <div class="top" :class="myClass" @click="backtop"></div>
    
  </div>
</template>
<script>
export default {
  data() {
    return {
      myClass:{
        fade:true,
        in:false
      }
    }
  },
  mounted() {
    window.addEventListener('scroll', this.scrollToTop);
  },
  methods: {
    scrollToTop(){
      var top=document.getElementsByClassName(".top");
      var scrollTop = window.pageYOffset || document.documentElement.scrollTop || document.body.scrollTop;
      var that=this;
      that.scrollTop=scrollTop;
      if(that.scrollTop>=200){
        this.myClass.fade=false;
        this.myClass.in=true;
      }else{
        this.myClass.fade=true;
        this.myClass.in=false;
      }
    },
    backtop(){
      var that=this;
      var timer=setInterval(()=>{
        var ispeed=Math.floor(-that.scrollTop/8);
        document.documentElement.scrollTop = document.body.scrollTop = that.scrollTop + ispeed
        if(that.scrollTop===0){
          clearInterval(timer);
        }
      },16)
    }
  },
  destroyed() {
    window.removeEventListener('scroll', this.scrollToTop);
  },
}
</script>
<style scoped>
  .top{
    width:58px;
    height:58px;
    border-radius:50%;
    background:url(../../assets/bgimg/top_bg.jpg);
    transform:rotate(180deg);
    cursor:pointer;
    border:none;
    position:fixed;
    top:90%;
    right:5%;
  }
  .fade{
    opacity:0;
    transition: all 1s linear;
  }
  .in{
    transition: all 1s linear;
    opacity:1;
  }
</style>