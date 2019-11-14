<template>
<div>
  <div class="split_line"></div>
        <div class="footer clear">
            <div class="item">
                <p><a href="javascript:;">美食天下-让吃美好</a></p>
                <p>
                    <a href="javascript:;">关于我们</a>
                    <a href="javascript:;">联系我们</a>
                    <a href="javascript:;">加入我们</a>
                    <a href="javascript:;">服务声明</a>
                    <a href="javascript:;">有情链接</a>
                    <a href="javascript:;">网站地图</a>
                    <a href="javascript:;">移动应用</a>
                </p>
            </div>
            <div class="item">
                <img src="../../assets/img/weixin_727.png" alt="">
                微信客户端
            </div>
            <div class="item">
                <img src="../../assets/img/msc_app.png" alt="">
                手机公众号
            </div>
           
             </div>
            <div class="footer">
            <ul>
                <li>
                    <strong>友情链接：</strong>
                </li>
                <li><a href="javascript:;">愉悦妈妈</a></li>
                <li><a href="javascript:;">自游乐</a></li>
                <li><a href="javascript:;">爱奇艺生活</a></li>
                <li><a href="javascript:;">中华美食网</a></li>
                <li><a href="javascript:;">太平洋亲子网</a></li>
                <li><a href="javascript:;">美食杰</a></li>
                <li><a href="javascript:;">红餐网</a></li>
                <li><a href="javascript:;">食品商务网</a></li>
                <li><a href="javascript:;">妈妈网</a></li>
                <li><a href="javascript:;">亲宝网</a></li>
                <li><a href="javascript:;">6296网址大全</a></li>
                <li><a href="javascript:;">中国地图</a></li>
                <li><a href="javascript:;">三九养生堂</a></li>
                <li><a href="javascript:;">饭菜网</a></li>
                <li><a href="javascript:;">波奇网</a></li>
                <li><a href="javascript:;">糖豆网</a></li>
                <li><a href="javascript:;">慧聪网</a></li>
                <li><a href="javascript:;">企业服务平台</a></li>
                <li><a href="javascript:;">什么值得买</a></li>
            </ul>
        </div>
        <div class="footer pan">
            <p>
                版权所有 © 2004-2019 美食天下  保留所有权利 - 京公网安备 11010502031041号  / 京ICP证090244号 / 京ICP备10020153号
            </p>
        </div>
        <div class="img">

        </div>
</div>
</template>
<script>
export default {
    data(){
        return{

        }
    }
}
</script>
<style scoped>
   .clear:after {
       clear: both;
       content: ' ';
       display: block;
       height: 0;
       overflow: hidden;
       visibility: hidden;
   }
   ul{
       list-style: none;
       display: flex;
       flex-wrap: wrap;
   }
   .footer.clear div:nth-child(2){
       margin-right: 19px;
   }
   ul li{
       width:80px;
   }
   a{
       text-decoration: none;
    margin-left: 0;
   }
   a:hover{
       color: #c90;
       text-decoration:underline;
   }
    .item p:nth-child(1) a{
        color: #f50;
    }
   .item p a{
        color: #666;
       font-size: 13px;
       margin-left: 10px;
   }
   ul li a{
       color: #666;
   }
   strong{
       font-weight: 800;
       color:black;
   }
       *{
        padding: 0;
        margin: 0;
        font: 12px/1.6 "Hiragino Sans GB",STHeiti,"微软雅黑","Microsoft YaHei",Helvetica,Arial,serif;
        }
    .item img{
        width:80px;
        height:80px;
        display: block; 
    }
    .footer{
        margin: 0 auto;
        width: 990px;
    }
    .footer .item{
        float: left;
    }
    .footer div:nth-child(1){
           width:780px;
           height:69px;
    }
    .pan p{
        text-align: center;
        margin-top: 20px;
        color: #666;
    }
    .split_line{
      width:100%;
      height:30px;
      border-top:1px solid #9a9a9a;
      margin-top:30px;
    }
</style>

