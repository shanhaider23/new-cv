<template>
  <div class="contact">
    <!-- <p>
      I&apos;m currently living in London, though I'm open to opportunities
      across the globe.
    </p> -->
    <p>
      Email me at <a href="mailto:mike@berman.xyz">mike@berman.xyz</a>.
    </p>
  </div>
</template>

<script>
export default {
  name: 'Contact',
};
</script>

<style scoped lang="scss">
.contact {
  a {
    color: inherit;
    text-decoration: none;

    &:hover {
      text-decoration: underline;
    }
  }
}
</style>
