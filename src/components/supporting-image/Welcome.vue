<template>
  <WelcomeImage :class="`image ${visible && 'visible'}`" />
</template>

<script>
import WelcomeImage from '../../assets/layers/Welcome.svg';

export default {
  name: 'Welcome',
  components: {
    WelcomeImage,
  },
  props: {
    visible: Boolean,
  },
};
</script>

<style scoped lang="scss">
.image {
  opacity: 0;

  &.visible {
    opacity: 1;
  }
}
</style>
