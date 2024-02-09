<template>
  <div v-if="reklama" class="absolute h-screen w-full bg-shadow grid place-content-center px-5">
    <div class="relative">
      <div class="absolute w-full h-full essa grid place-content-center">
        <div>
          <div class="lds-roller"><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div></div>
        </div>
      </div>
      <img src="/images/brakC.jpg" alt="">
    </div>
    <button @click="reklama = false" class="mt-6 font-bold px-5 py-1 bg-pink-700 duration-300 hover:bg-pink-600 rounded-lg">ZAMKNIJ</button>
  </div>
  <section class="h-screen w-full grid place-content-center px-5">
    <div class="flex items-center flex-wrap justify-center gap-2">
      <div class="text-2xl">
        <h1 class="mb-4 text-center">H-hej mam t-takie pytanko UwU.</h1>
        <div class="w-full flex items-center justify-center">
            <slot></slot>
        </div>
      </div>
      <img src="https://media.tenor.com/f6rDUpYoT5gAAAAi/peeposhy-pepeshy.gif" width="100px" alt="">
    </div>
  </section>
</template>

<script>
export default {
  data() {
    return {
      reklama: false,
    };
  },
  mounted() {
    setTimeout(() => {
      this.reklama = true;
    }, 1000);
  },
};
</script>

<style scoped>
.bg-shadow{
  background-color: #000000a9;
}

.essa {
  background: #0000009b;
}

.lds-roller {
  display: inline-block;
  position: relative;
  width: 80px;
  height: 80px;
}
.lds-roller div {
  animation: lds-roller 1.2s cubic-bezier(0.5, 0, 0.5, 1) infinite;
  transform-origin: 40px 40px;
}
.lds-roller div:after {
  content: " ";
  display: block;
  position: absolute;
  width: 7px;
  height: 7px;
  border-radius: 50%;
  background: #fff;
  margin: -4px 0 0 -4px;
}
.lds-roller div:nth-child(1) {
  animation-delay: -0.036s;
}
.lds-roller div:nth-child(1):after {
  top: 63px;
  left: 63px;
}
.lds-roller div:nth-child(2) {
  animation-delay: -0.072s;
}
.lds-roller div:nth-child(2):after {
  top: 68px;
  left: 56px;
}
.lds-roller div:nth-child(3) {
  animation-delay: -0.108s;
}
.lds-roller div:nth-child(3):after {
  top: 71px;
  left: 48px;
}
.lds-roller div:nth-child(4) {
  animation-delay: -0.144s;
}
.lds-roller div:nth-child(4):after {
  top: 72px;
  left: 40px;
}
.lds-roller div:nth-child(5) {
  animation-delay: -0.18s;
}
.lds-roller div:nth-child(5):after {
  top: 71px;
  left: 32px;
}
.lds-roller div:nth-child(6) {
  animation-delay: -0.216s;
}
.lds-roller div:nth-child(6):after {
  top: 68px;
  left: 24px;
}
.lds-roller div:nth-child(7) {
  animation-delay: -0.252s;
}
.lds-roller div:nth-child(7):after {
  top: 63px;
  left: 17px;
}
.lds-roller div:nth-child(8) {
  animation-delay: -0.288s;
}
.lds-roller div:nth-child(8):after {
  top: 56px;
  left: 12px;
}
@keyframes lds-roller {
  0% {
    transform: rotate(0deg);
  }
  100% {
    transform: rotate(360deg);
  }
}

</style>