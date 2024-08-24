<script>
import { Sections } from '../constants.js';

export default {
  name: 'SectionTitle',
  props: {
    sectionKey: String,
  },
  computed: {
    section() {
      return Sections.get(this.sectionKey);
    },
  },
  render() {
    const { icon: Icon, title } = this.section;

    if (title == null) {
      return null;
    }

    return (
      <h1 class="section-title">
        <Icon class="section-icon" />
        {title}
      </h1>
    );
  },
};
</script>

<style scoped lang="scss">
.section-title {
}
</style>

<style lang="scss">
.section-icon {
  height: 2em;
  vertical-align: middle;
  width: 2em;

  .stroke {
    fill: none;
    stroke: currentColor;
    stroke-width: 8;
    stroke-linecap: round;
    stroke-linejoin: round;
    stroke-miterlimit: 10;
  }

  .fill {
    fill: currentColor;
  }
}
</style>
