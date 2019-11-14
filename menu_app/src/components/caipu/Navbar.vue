<template>
        <div class="Navbar">
             <ul class="item">
                <router-link to="/" style="text-decoration:none;"><li class="first"> <i>美食天下</i> 首页</li></router-link >
                <li><router-link to="Detalis">菜谱</router-link></li>
                <li><router-link to="Foods">食材</router-link></li>
                <li><router-link to="Special">珍选</router-link></li>
                <li><router-link to="Health">健康</router-link></li>
                <li><a href="javascript:;">专题</a></li>
                <li><a href="javascript:;">社区</a></li>
                <li><a href="javascript:;">话题</a></li>
                <li><a href="javascript:;">活动</a></li>
                <li> <div>
                    </div>
                    <div id="bar">
                        <p>烘焙</p>
                        <p>妈妈派</p>
                    </div>
                    </li>
               </ul>
                <div class="right_li"><ul style="display:flex;width:100%;list-style:none;">
                  <router-link to="/Bg" style="text-decoration:none;"><li v-html="myRegHtml" :class="myClass1"></li></router-link >
                  <router-link to="/Bg" style="text-decoration:none;"><li v-html="myLoginHtml" :class="myClass" @click="logout"></li></router-link >
                  <li class="li_img"><a href=""><img src="../../assets/img/nr1.png" alt=""><h6>发布</h6></a></li>
                  <li class="li_img"><a href=""><img src="../../assets/img/nr2.png" alt=""><h6>签到</h6></a></li>
                  <li class="li_img"><a href=""><img src="../../assets/img/nr3.png" alt=""><h6>客户端</h6></a></li>
                </ul></div>
           

        </div>
</template>
<script>
export default {
  data(){
    return{
      myLoginHtml:`登录`,
      myRegHtml:`注册`,
      myClass:{
        myWidth:false
      },
      myClass1:{
        myWidth1:false
      }
    }
  },
  methods: {
    login_out(){
      var l=sessionStorage.length;
      var uname=sessionStorage.getItem("uname");
      //console.log(uname);
      //console.log(typeof l);
      if(l>0){
        this.myLoginHtml=`欢迎回来${uname},退出`;
        //console.log(1);
        this.myRegHtml=``;
        this.myClass.myWidth=true;
        this.myClass1.myWidth1=true;
      }else{
        this.myLoginHtml=`登录`;
        this.myRegHtml=`注册`;
        this.myClass.myWidth=false;
        this.myClass1.myWidth1=false;
      }
    },
    logout(){
      sessionStorage.removeItem("uname");
      this.$router.push({path:'/'})
    }
  },
  created() {
    this.login_out();
  },
}
</script>
<style scoped>
  .right_li ul li.li_img:hover h6{
    color:#fff;
  }
  .myWidth{
    width:140px !important;
  }
  .myWidth1{
    width:0px !important;
  }
  .Navbar{
    z-index:999;
  }
  .Navbar .right_li{
    position:absolute;
    top:0px;
    right:0px;
  }
  .Navbar .right_li li{
    width:60px;
    height:40px;
    line-height: 41px;
    font-size: 12px;
    color:#ccc;
    text-align: center;
  }
  .Navbar .right_li li:not(.li_img):hover{
    background:black;
  }
  .Navbar .right_li li a{
    color:#ccc;
    text-decoration: none;  
  }
  
  *{
      font:12px/1.6 "Hiragino Sans GB",STHeiti,"微软雅黑","Microsoft YaHei",Helvetica,Arial,serif;
      padding:0;
      margin: 0;
  }
  img{
      width:18px;
      height:18px;
      margin-bottom:15px;
  }
  h6{
      margin-top: -19px;
  }
  .Navbar .right_li li:nth-child(3){
      background: #59C3D1;
  }
  .Navbar .right_li li:nth-child(4){
      background: #FFA859;
  }
  .Navbar .right_li li:nth-child(5){
      background: #FE5761;
  }
  .Navbar .item li.first{
      width:100px;
      margin-left: 10px;
  }
  .Navbar .item li:nth-child(1) i{
      font-weight: 700;
      font-size: 14px
  }
  .Navbar{
      width:100%;
      position:fixed;
      height:40px;
      background:#333;
      top:0px;
  }
  .Navbar .item{
      display: flex;
      justify-content:left;
      list-style: none;

  }
  .Navbar .item li{
  width:60px;
  height:40px;
  color:white;
  line-height: 41px;
  font-size: 12px;
  color:#ccc;
  text-align: center;
  }
  .Navbar .item li a{
    color:#ccc;
    text-decoration: none;  
  }
  .Navbar .item li:hover a{
    color:#fff;
  }
  .bar{
    width:60px;
    height:40px;
    font-size: 12px;
    color:#ccc;
    list-style: none;  
    text-align: center;
  }

  .Navbar  li.li_img{
    color:red;
  }
  .Navbar .item li:nth-child(10){
      width:30px !important;
      position: relative;
  }
  .Navbar .item li:hover{
      background:black;
      font-weight: 500;
  }
  .Navbar .item li div:first-child{
    margin-top: 19px;
    width:0;
    height:0;
    border-right:8px solid transparent;
    border-left:8px solid transparent;
    border-top:8px solid #999;
      margin-left: 8px;
  }
  .Navbar .item li:nth-child(10) div:last-child{
      display: none;
      height:80px;
      margin-top:13px;
      width: 60px;
  }
  .Navbar .item li:nth-child(10):hover{
    cursor:pointer;
  }
  .Navbar .item li:nth-child(10):hover div:last-child{
  display: block;
  }
  #bar p{
      width:60px;
      height: 40px;
      line-height: 35px;
      background: #333;
      margin-top:10px;
      text-align: center;
      margin: 0;
  }
  #bar p:hover{
      background:black;
      color: white;
      font-weight: 500;
      
  }

  .el-dropdown-menu{
      background:#333 !important;
      left:750px !important;
      top:108px !important;
  }
</style>
