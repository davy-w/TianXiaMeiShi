<template>
  <div class="home">
    <!--<img alt="Vue logo" src="../assets/logo.png">
    <HelloWorld msg="Welcome to Your Vue.js App"/>-->
    <Navbar></Navbar>
    <div style="width:990px;margin:0 auto">
      <BotNav></BotNav>
      <MiniBar></MiniBar>
      <Lunbo></Lunbo>
      <TuiJian></TuiJian>
      <Rcom></Rcom>
      <MenuShow></MenuShow>
      <HotTopic></HotTopic>
    </div>
    <BackToTop></BackToTop>
    <Footer></Footer>
  </div>
</template>

<script>
// @ is an alias to /src
import HelloWorld from '@/components/HelloWorld.vue'
import BotNav from '@/components/caipu/BotNav.vue'
import Lunbo from '@/components/caipu/Lunbo.vue'
import HotTopic from '@/components/caipu/HotTopic.vue'
import MenuShow from '@/components/caipu/MenuShow.vue'
import Navbar from '@/components/caipu/Navbar.vue'
import Footer from '@/components/caipu/Footer.vue'
import BackToTop from '@/components/caipu/BackToTop.vue'
import TuiJian from '@/components/caipu/TuiJian.vue'
import Rcom from '@/components/caipu/Rcom.vue'
import MiniBar from '@/components/caipu/MiniBar.vue'
export default {
  name: 'home',
  components: {
    HelloWorld,
    BotNav,
    Lunbo,
    HotTopic,
    MenuShow,
    Navbar,
    Footer,
    BackToTop,
    TuiJian,
    Rcom,
    MiniBar
  }
}
</script>
