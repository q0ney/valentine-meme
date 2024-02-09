<template>
  <section class="h-screen w-full grid place-content-center px-5">
    <div class="flex items-center mb-10">
        <h1 class="text-center text-2xl">Supcio! Ale musisz wypełnić kilka pytań.</h1>
        <img src="/images/2x.gif" alt="">
    </div>
    <h2 class="text-center text-xl">1. Czy jesteś alternatywkom? (giga ważne)</h2>
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