<template>
  <div class="welcome">
    <Logo class="logo" />
    <h1>Mike Berman</h1>
    <h3>Senior front end developer</h3>
  </div>
</template>

<script>
import Logo from '../../assets/logo.svg';

export default {
  name: 'Welcome',
  components: { Logo },
};
</script>

<style scoped lang="scss">
.welcome {
  align-items: center;
  display: flex;
  flex-direction: column;
  flex-grow: 1;
  justify-content: center;
  text-align: center;

  .logo {
    height: 64px;
    margin-bottom: 32px;
    width: 64px;
  }

  h1 {
    font-size: 42px;
  }
}
</style>
