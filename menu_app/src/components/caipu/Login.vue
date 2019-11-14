<template>
  <div class="login_container">
    <el-tabs v-model="activeName" type="border-card">
      <el-tab-pane label="注册" name="first">
        <ul class="reg_ul">
          <li>
            <label for="uname">用户名：</label>
            <input v-model="runame" name="runame" placeholder="6~10位任意字符" ref="id" @blur="loseFocus">
          </li>
          <li>
            <label for="upwd">密&nbsp;&nbsp;码：</label>
            <input v-model="rupwd" name="rupwd" placeholder="6~10位任意字符" type="password">
          </li>
          <li>
            <label for="email">邮&nbsp;&nbsp;箱：</label>
            <input v-model="email" name="email" >
          </li>
        </ul>
        <el-button type="danger" @click="reg">注&nbsp;册</el-button>
      </el-tab-pane>
      <el-tab-pane label="登录" name="second">
        <ul class="log_ul">
          <li>
            <label for="uname">用户名：</label>
            <input v-model="luname" name="luname">
          </li>
          <li>
            <label for="upwd">密&nbsp;&nbsp;码：</label>
            <input v-model="lupwd" name="lupwd" type="password">
          </li>
        </ul>
        <el-button type="danger" @click="login">登&nbsp;录</el-button>
      </el-tab-pane>
    </el-tabs>
  </div>
</template>
<script>

export default {
  data() {
    return {
      runame:'',
      rupwd:'',
      email:'',
      luname:'',
      lupwd:'',
      activeName:'first'
    }
  },
  methods: {
    login(){
      //1:获取用户名和密码
      var uname=this.luname;
      var upwd=this.lupwd;
      //5:发送ajax请求
      var url="login";
      var obj={uname,upwd};
      this.axios.get(url,{params:obj}).then(result=>{
        if(result.data.code=="1"){
            console.log("登录成功");
            sessionStorage.setItem("uname",uname);
            this.$message('登录成功，3秒后跳转至首页');
            setTimeout(()=>{
              this.$router.push({path:"/"});
            },3000)
        }else if(result.data.code=="-1"){
            this.$message('用户名或密码有误');
        }
      });
    },
    loseFocus(){
      var uname=this.runame;
      var url="verify";
      var obj={uname};
      var reg=/^\w{6,10}$/i;
      if(reg.test(uname)==true){
        this.axios.get(url,{params:obj}).then(result=>{
          if(result.data.data=="1"){
            this.$message('用户名已被注册');
          }else if(result.data.data=="0"){
            this.$message('用户名可用');
          }
        });
      }else{
        this.$message('用户名格式错误');
      }
    },
    reg(){
      var uname=this.runame;
      var upwd=this.rupwd;
      var email=this.email;
      var reg=/^\w{6,10}$/i;
      if(reg.test(uname)==false){
          this.$alert('用户名格式不正确', '提示', {
            confirmButtonText: '确定'
         });
        return;
      }
      if(reg.test(upwd)==false){
          this.$alert('密码格式不正确', '提示', {
            confirmButtonText: '确定'
         });
        return;
      }
      var url="reg";
      // var str=`uname=${uname}&upwd=${upwd}&email=${email}`
      var obj={uname,upwd,email};
      // this.axios.post(url,str).then(result=>{
      //   // console.log(result.data)
      //    this.$message('注册成功，请登录！');
      //   setTimeout(()=>{
      //         this.activeName="second";
      //       },1500);
      //   })
      this.axios({
          method: 'post',
          url: url,
          headers: {
              'Content-type': 'application/x-www-form-urlencoded'
          },
          params:obj
      }).then(result=>{
        this.$message('注册成功，请登录！');
        setTimeout(()=>{
              this.activeName="second";
            },1500);
      })

        
    }
  }
}
</script>
<style scoped>
  .el-button{
    width:300px;
    height:40px;
    margin-right:200px;
    outline:0;
  }
  .login_container{
    width:530px;
    height:300px;
  }
  .log_ul,
  .reg_ul{
    display: block;
    border: 1px solid #999;
    border-radius: 4px;
    width:298px;
    height:65px;
    padding:0;
  }
  .reg_ul{height:98px;}
  ul{
    list-style:none;
  }
  .log_ul li,
  .reg_ul li{
    height:32px;
    line-height:32px;
  }
  .log_ul li label,
  .reg_ul li label{
    padding: 0 5px 0 10px;
    margin:0;
    font-size:14px;
    font-family:"Hiragino Sans GB", STHeiti, 微软雅黑, "Microsoft YaHei", Helvetica, Arial, serif;
  }
  .log_ul li input,
  .reg_ul li input{
    width: 190px;
    border: 0;
    font-size: 14px;
    background: rgba(0,0,0,0);
    outline:0;
  }
  .log_ul li label
  {
    float:left;
    padding-left: 13px;
  }
  .log_ul li:last-child{
    border-top:1px solid #999;
  }
  .reg_ul li label
  {
    float:left;
    padding-left: 13px;
  }
  .reg_ul li:first-child label
  {
    padding-left: 0px;
  }
  .reg_ul li:not(:first-child){
    border-top:1px solid #999;
  }
</style>
