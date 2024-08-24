<template>
  <FTICImage :class="`image ${visible && 'visible'}`" />
</template>

<script>
import FTICImage from '../../assets/layers/FTIC.svg';

export default {
  name: 'FTIC',
  components: {
    FTICImage,
  },
  props: {
    visible: Boolean,
  },
};
</script>

<style scoped lang="scss">
.image {
  transform: translate3d(-160%, 0, -1000px);
  transition: transform 0.5s;

  &.visible {
    transform: translate3d(0, 0, 0);
  }
}
</style>
