<template>
  <div class="skills">
    <div class="col">
      <ul>
        <li>Frameworks</li>
        <ul>
          <li>React</li>
          <li>Vue.js</li>
          <li>Webpack</li>
        </ul>
        <li>JavaScript</li>
        <ul>
          <li>ES6</li>
          <li>TypeScript</li>
          <li>Flow</li>
          <li>Node.js</li>
        </ul>
      </ul>
    </div>

    <div class="col">
      <ul>
        <li>CSS</li>
        <ul>
          <li>SASS</li>
          <li>PostCSS</li>
        </ul>
        <li>HTML5</li>
        <li>PHP &amp; Hack</li>
        <li>Python</li>
      </ul>
    </div>
  </div>
</template>

<script>
export default {
  name: 'Skills',
};
</script>

<style scoped lang="scss">
.skills {
  display: flex;
  max-width: 600px;

  .col {
    flex: 1 0 0;
  }

  ul:last-child {
    margin-bottom: 0;
  }

  @media screen and (max-width: 850px) {
    display: block;

    .col:not(:first-child) {
      margin-top: 20px;
    }
  }
}
</style>
