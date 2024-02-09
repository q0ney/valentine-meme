<template>
  <component :odpowiedzi="odpowiedzi" :is="etapy[currentTab]">
    <button v-if="etapy[currentTab] == Mainik" type="button" @click="currentTab = 'Laurka'" class="hover:text-pink-400 duration-300"> >KLIK&lt </button>
    
    <button v-if="etapy[currentTab] == PierwszeOdrzucenieMilosci" type="button" @click="currentTab = 'PierwszyAkcept'" class="text-2xl px-5 py-1 bg-green-600 hover:bg-green-700 duration-300 rounded-lg">Okej</button>
    <button v-if="etapy[currentTab] == PierwszeOdrzucenieMilosci && !nieMaOdrzucenia" type="button" @click="nieMaOdrzucenia = true" class="text-2xl px-5 py-1 bg-red-600 hover:bg-red-700 duration-300 rounded-lg">NIE</button>



    <button v-if="etapy[currentTab] == Laurka" type="button" @click="currentTab = 'PierwszyAkcept'" class="text-2xl px-5 py-1 bg-green-600 hover:bg-green-700 duration-300 rounded-lg">TAK</button>
    <button v-if="etapy[currentTab] == Laurka" type="button" @click="currentTab = 'PierwszeOdrzucenieMilosci'" class="text-2xl px-5 py-1 bg-red-600 hover:bg-red-700 duration-300 rounded-lg">NIE</button>
    
    <button v-if="etapy[currentTab] == PierwszyAkcept" type="button" @click="currentTab = 'DrugiePytanie'; odpowiedzi.alternatywka = 'TAK'" class="text-2xl px-5 py-1 bg-green-600 hover:bg-green-700 duration-300 rounded-lg">TAK</button>
    <button v-if="etapy[currentTab] == PierwszyAkcept" type="button" @click="currentTab = 'DrugiePytanie'; odpowiedzi.alternatywka = 'NIE'" class="text-2xl px-5 py-1 bg-red-600 hover:bg-red-700 duration-300 rounded-lg">NIE</button>
    
    <button v-if="etapy[currentTab] == DrugiePytanie" type="button" @click="currentTab = 'TrzeciePytanie'; odpowiedzi.azjatka = 'TAK'" class="text-2xl px-5 py-1 bg-green-600 hover:bg-green-700 duration-300 rounded-lg">TAK</button>
    <button v-if="etapy[currentTab] == DrugiePytanie" type="button" @click="currentTab = 'TrzeciePytanie'; odpowiedzi.azjatka = 'NIE'" class="text-2xl px-5 py-1 bg-red-600 hover:bg-red-700 duration-300 rounded-lg">NIE</button>
    
    <button v-if="etapy[currentTab] == TrzeciePytanie" type="button" @click="currentTab = 'CzwartePytanie'; odpowiedzi.mangozjeb = 'TAK'" class="text-2xl px-5 py-1 bg-green-600 hover:bg-green-700 duration-300 rounded-lg">TAK</button>
    <button v-if="etapy[currentTab] == TrzeciePytanie" type="button" @click="currentTab = 'CzwartePytanie'; odpowiedzi.mangozjeb = 'NIE'" class="text-2xl px-5 py-1 bg-red-600 hover:bg-red-700 duration-300 rounded-lg">NIE</button>
    
    <button v-if="etapy[currentTab] == CzwartePytanie" type="button" @click="currentTab = 'LastPytanie'; odpowiedzi.zoladkowa = 'TAK'" class="text-2xl px-5 py-1 bg-green-600 hover:bg-green-700 duration-300 rounded-lg">TAK</button>
    <button v-if="etapy[currentTab] == CzwartePytanie" type="button" @click="currentTab = 'LastPytanie'; odpowiedzi.zoladkowa = 'NIE'" class="text-2xl px-5 py-1 bg-red-600 hover:bg-red-700 duration-300 rounded-lg">NIE</button>
 
    <div class="flex flex-col" v-if="etapy[currentTab] == LastPytanie">
      <input v-model="odpowiedzi.rozmiarButa" class="px-2 py-2 border-2 rounded-lg" type="text" placeholder="Rozmiar buta...">
      <button @click="przeslij()" class="mt-5 text-xl px-2 py-1 bg-pink-600 border rounded-lg shadow-lg" type="button">Prześlij</button>
    </div>

  </component>
  

</template>

<script setup>
import Mainik from '@/components/Mainik.vue';
import Laurka from '@/components/Laurka.vue';
import PierwszeOdrzucenieMilosci from '@/components/PierwszeOdrzucenieMilosci.vue'
import PierwszyAkcept from '@/components/PierwszyAkcept.vue';
import DrugiePytanie from '@/components/DrugiePytanie.vue';
import TrzeciePytanie from '@/components/TrzeciePytanie.vue';
import CzwartePytanie from '@/components/CzwartePytanie.vue';
import LastPytanie from '@/components/LastPytanie.vue';
import Wyniki from '@/components/Wyniki.vue';

import { ref, onMounted, computed, watch } from 'vue';

const currentTab = ref('Mainik')

const nieMaOdrzucenia = ref(false)

const odpowiedzi = {
  alternatywka: '',
  azjatka: '',
  mangozjeb: '',
  zoladkowa: '',
  rozmiarButa: '',
}

const etapy = {
  Mainik,
  Laurka,
  PierwszeOdrzucenieMilosci,
  PierwszyAkcept,
  DrugiePytanie,
  TrzeciePytanie,
  CzwartePytanie,
  LastPytanie,
  Wyniki
}

const przeslij = () => {
  const rozmiarButaValue = parseInt(odpowiedzi.rozmiarButa);

  if (!isNaN(rozmiarButaValue)) {
    odpowiedzi.rozmiarButa = rozmiarButaValue;
    console.log('Prześlij clicked');
    console.log('Rozmiar buta:', odpowiedzi.rozmiarButa);
    currentTab.value = 'Wyniki';
  } else {
    console.log('zly')

  }
}


</script>

<style scoped>
input {
  font-weight: 500;
  background: none;
}
</style>