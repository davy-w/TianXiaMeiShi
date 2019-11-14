<template>
  <div class="my_carousel clear">
    <el-carousel indicator-position="outside">
      <el-carousel-item v-for="(item,i) of list" :key="i">
        <img :src="'http://127.0.0.1:3000/img/'+item.img_url">
      </el-carousel-item>
    </el-carousel>
  </div>
</template>
<script>
export default {
  data() {
    return {
      list:[]
    }
  },
  methods: {
    getUrl(){
      var url="img";
      this.axios.get(url).then(result=>{
        console.log(result.data.data);
        this.list=result.data.data;
      })
    }
  },
  created() {
    this.getUrl();
  },
}
</script>

<style scoped>
  .el-carousel__item h3 {
    color: #475669;
    font-size: 18px;
    opacity: 0.75;
    line-height: 300px;
    margin: 0;
  }
  
  .el-carousel__item:nth-child(2n) {
    background-color: #99a9bf;
  }
  
  .el-carousel__item:nth-child(2n+1) {
    background-color: #d3dce6;
  }
  .clear{
    clear:both;
    margin-top:20px;
  }
</style>