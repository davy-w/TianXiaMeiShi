<template >
  <div id="perspective">
    <div id="wrap">
      <img src="../../assets/log_01.jpg" alt="">
      <img src="../../assets/log_02.jpg" alt="">
      <img src="../../assets/log_03.jpg" alt="">
      <img src="../../assets/log_04.jpg" alt="">
      <img src="../../assets/log_05.jpg" alt="">
      <img src="../../assets/log_06.jpg" alt="">
      <img src="../../assets/log_07.jpg" alt="">
      <img src="../../assets/log_08.jpg" alt="">
      <img src="../../assets/log_09.jpg" alt="">
      <img src="../../assets/log_10.jpg" alt="">
			<img src="../../assets/log_11.jpg" alt="">
    </div> 
  </div>
</template>
<script>
export default {
  data(){
		return{
		}
  }, 
  methods: {
    loadmore(){
      var oImg = document.getElementsByTagName('img');
			var len = oImg.length;
			var deg = 360 / len;
      window.onload = function(){
				for(var i = 0; i < len; i++){
					oImg[i].style.transform = 'rotateY('+ i* deg +'deg) translateZ(300px)';
					oImg[i].style.transitionDelay = (len - i)*0.1 + 's';
				}
			}
    	var rotateX = -10,
					rotateY = 0;//定义相册的初始旋转度数
					
			document.onmousedown = function(e){
				var oldX = e.clientX,
						oldY = e.clientY;//定义旧的值
				this.onmousemove = function(e){
					console.log(e.clientX,e.clientY);
					var newX = e.clientX,
							newY = e.clientY;
								
					var minusX = newX - oldX;
					var minusY = newY - oldY;
					rotateY += minusX * 0.2;//度数累加
					rotateX -= minusY * 0.1;
					
					wrap.style.transform = 'rotateX('+ rotateX +'deg) rotateY('+ rotateY +'deg)'

					oldX = newX;
					oldY = newY;//将用完的值存起来
				}
				this.onmouseup = function(){
					console.log('结束');
					this.onmousemove = null;
				}
			}
    }
  },
	mounted() {
    this.loadmore()
  },
}
</script>
<style scoped>
	*{
		margin: 0;
		padding: 0;
	}
	#perspective{
		margin:0;
		padding:0;
		overflow: hidden;
		perspective:800px;/*景深 物体离浏览器之间的空间距离*/
	}
	#wrap{
		position: relative;
		width: 170px;
		height: 200px;
		border: 1px solid red;
		transform-style:preserve-3d;/*该元素之下所有子元素呈现3D视觉 */
		margin: 200px auto;
		transform: rotateX(-10deg) ;
	}
	#wrap img{
		position: absolute;
		transition: 1s;/*样式值的改变所花的时间*/
		width:100%;
		height:100%;
	}
</style>