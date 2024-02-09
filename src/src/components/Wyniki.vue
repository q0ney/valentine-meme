<template>
    <section class="h-screen w-full grid place-content-center px-5">
        <div class="flex items-center mb-10">
        <h1 class="text-center text-2xl">Dzięki kicia za odpowiedzi.</h1>
        <img src="/images/kiss.png" width="100px" alt="">
    </div>
          <div class="w-full flex flex-col items-center justify-center gap-4 mt-10">
    <div class="flex flex-col gap-1">
        <p id="p2" class="hidden"> >Trwa analiza twoich wyników...</p>
        <p id="p3" class="hidden" v-if="odpowiedzi.alternatywka === 'TAK'"> >Alternatywka...</p>
        <p id="p3" class="hidden" v-if="odpowiedzi.alternatywka === 'NIE'"> >Nie alternatywka aha</p>
        <p id="p4" class="hidden" v-if="odpowiedzi.azjatka === 'TAK'"> >Azjateczka supi uwu...</p>
        <p id="p4" class="hidden" v-if="odpowiedzi.azjatka === 'NIE'"> >Nie azjatka aha</p>

        <p id="p5" class="hidden" v-if="odpowiedzi.mangozjeb === 'TAK'"> >Lubi anime spoko...</p>
        <p id="p5" class="hidden" v-if="odpowiedzi.mangozjeb === 'NIE'"> >Nie lubi chińskich bajek aha</p>

        <p id="p6" class="hidden" v-if="odpowiedzi.zoladkowa === 'TAK'"> >Bedzięmy mogli się napić...</p>
        <p id="p6" class="hidden" v-if="odpowiedzi.zoladkowa === 'NIE'"> >Nie lubi wudy aha</p>

        <p id="p7" class="hidden" v-if="odpowiedzi.rozmiarButa >= 38"> >But: {{odpowiedzi.rozmiarButa}} Co ty yeti xd</p>
        <p id="p7" class="hidden" v-if="odpowiedzi.rozmiarButa < 38"> >Malutka stupka uwu...</p>

        <p id="p8" class="hidden"> >Porównywanie wyników z innymi kandydatkami...</p>

        <p id="p9" class="hidden"> >Wynik: <span class="font-medium">Ideał, żona, ślub zaraz!!!</span></p>

    </div>
    <h3 id="p10" class="font-medium hidden">W celu weryfikacji proszę wysłać mi zdjęcie swoich stupek.</h3>
          </div>
    </section>
  
  </template>
  
  <script setup>
import { ref, onMounted } from 'vue';

    defineProps({
        odpowiedzi: Object
    })


const counter = ref(0);

const incrementCounter = () => {
  counter.value += 1;
  let p = document.getElementById(`p${counter.value}`);
  if (p) {
    p.classList.remove('hidden');
  }
};

const showParagraph = (paragraphIndex) => {
  return counter.value === paragraphIndex;
};

onMounted(() => {
  // Use onMounted to start the timeout after the component is mounted
  for (let i = 0; i < 10; i++) {
    setTimeout(incrementCounter, i * 1000);
  }
});

  </script>