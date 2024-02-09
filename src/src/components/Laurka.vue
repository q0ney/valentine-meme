<script>
export default {}
</script>

<template>
    <div class="h-screen w-full absolute grid place-content-center laurka-bg">
		<div class="flex flex-col">
      		<img class="laurka-animation" src="/images/laurka.png" alt="">
			<div class="flex justify-center w-full gap-4 mt-10">
				<slot></slot>
			</div>
		</div>
    </div>
</template>

<style scoped>
.laurka-bg{
  animation: opacityAnimation 1s;
}

.laurka-animation{
  animation: scaleAnimation 1s;
}

@keyframes scaleAnimation {
	0% {
		transform: scale(0);
	}

  100% {
		transform: scale(1);
	}
}



@keyframes opacityAnimation {
	0% {
		opacity: 0;
	}

  100% {
		opacity: 1;
	}
}

</style>