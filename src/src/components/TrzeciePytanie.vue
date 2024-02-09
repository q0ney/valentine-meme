<template>
    <section class="h-screen w-full grid place-content-center px-5">
      <h2 class="text-center text-xl">3. Czy jesteś mangozjebem?</h2>
          <div class="w-full flex items-center justify-center gap-4 mt-10">
              <slot></slot>
          </div>
    </section>
  
  </template>
  
  <script setup>
    defineProps({
        odpowiedzi: Object
    })
  </script>