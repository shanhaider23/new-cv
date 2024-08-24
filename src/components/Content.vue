<template>
  <div class="content" ref="content">
    <Section
      ref="section"
      :current="key === sectionKey"
      :key="key"
      :sectionKey="key"
      v-for="key in sectionKeys" />
  </div>
</template>

<script>
import { SectionKeys } from '../constants.js';
import Section from './Section.vue';

export default {
  name: 'Content',
  components: {
    Section,
  },
  data: () => ({
    sectionKeys: SectionKeys,
  }),
  props: {
    sectionKey: String,
  },
  methods: {
    checkCurrentSection() {
      const windowMiddle = window.innerHeight / 2;
      const sectionEl = this.$refs.section.find(ref => {
        const rect = ref.$el.getBoundingClientRect();
        return rect.bottom > windowMiddle;
      });
      if (sectionEl && sectionEl.sectionKey !== this.sectionKey) {
        this.$emit('changeSection', sectionEl.sectionKey);
      }
    },
  },
  created() {
    window.addEventListener('scroll', this.checkCurrentSection);
  },
  mounted() {
    this.checkCurrentSection();
  },
  destroyed() {
    window.removeEventListener('scroll', this.checkCurrentSection);
  },
};
</script>

<style scoped lang="scss">
.content {
}
</style>
