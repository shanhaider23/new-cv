<template>
	<div id="app">
		<SupportingImage class="image" :sectionKey="sectionKey" v-if="!mobile" />
		<Content class="content" :sectionKey="sectionKey" @changeSection="handleChangeSection" />
	</div>
</template>

<script>
import SupportingImage from './components/SupportingImage.vue'
import Content from './components/Content.vue'
import {Sections, SectionKeys} from './constants.js'

const mobileMediaQuery = window.matchMedia ? window.matchMedia('(max-width: 550px)') : null

export default {
	name: 'App',
	components: {
		SupportingImage,
		Content,
	},
	data: () => ({
		mobile: false,
		sectionKey: SectionKeys[0],
	}),
	methods: {
		handleChangeSection(sectionKey) {
			const section = Sections.get(sectionKey)
			if (section) {
				this.sectionKey = sectionKey
				document.title = `Shan-e-Haider${section.title ? ` 🔹 ${section.title}` : ''}`
			}
		},
		testMediaQuery(e) {
			this.mobile = e.matches
		},
	},
	created() {
		if (!mobileMediaQuery) return
		this.testMediaQuery(mobileMediaQuery)
		mobileMediaQuery.addListener(this.testMediaQuery)
	},
	destroyed() {
		if (!mobileMediaQuery) return
		mobileMediaQuery.removeListener(this.testMediaQuery)
	},
}
</script>

<style lang="scss">
// Reset
* {
	box-sizing: border-box;
}

html {
	@media print {
		font-size: 14px;
	}
}

body {
	margin: 0;
}

img {
	max-width: 100%;
}

input,
textarea,
select,
button {
	font: inherit;
}

// Global styles
h1,
h2,
h3 {
	font-family: 'Quattrocento', sans-serif;
	font-weight: 300;
	margin: 0;
}

h1 {
	margin-bottom: 16px;

	@media print {
		margin-bottom: 0;
	}
}

h3 {
	letter-spacing: 0.05em;
	text-transform: uppercase;
}

p,
ul,
ol {
	line-height: 1.5;
}
</style>

<style lang="scss" scoped>
// Layout
#app {
	font-family: 'Merriweather Sans', sans-serif;
}

.image {
	bottom: 0;
	left: 0;
	position: fixed;
	top: 0;
	width: 40vw;
}

.content {
	background: white;
}

.image + .content {
	padding-left: 40vw;

	@media print {
		padding-left: 0;
	}
}
</style>
