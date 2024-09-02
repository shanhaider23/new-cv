<template>
	<div class="skill__wrapper">
		<div class="skills">
			<div class="col">
				<ul>
					<li>FRONTEND DEVELOPMENT</li>
					<ul>
						<li>Vue.js</li>
						<li>React</li>
						<li>Next.js</li>
						<li>JavaScript</li>
						<li>ES6</li>
						<li>TypeScript</li>
						<li>CSS Preprocessors (SCSS, SASS, LESS)</li>
						<li>CSS Frameworks (Bootstrap, Tailwind)</li>
						<li>Component Libraries (Element UI, MUI, Quasar)</li>
					</ul>
				</ul>
			</div>
			<div class="col">
				<ul>
					<li>Backend Development</li>
					<ul>
						<li>Node.js, Express.js</li>
					</ul>
				</ul>
			</div>
		</div>
		<div class="skills">
			<div class="col">
				<ul>
					<li>Testing</li>
					<ul>
						<li>Cypress End to End</li>
						<li>Cypress Component</li>
					</ul>
				</ul>
			</div>
			<div class="col">
				<ul>
					<li>Database</li>
					<ul>
						<li>MongoDB</li>
						<li>MySQL</li>
						<li>Firebase</li>
					</ul>
				</ul>
			</div>
			<div class="col">
				<ul>
					<li>DevOps</li>
					<ul>
						<li>GitHub Actions</li>
						<li>Docker</li>
						<li>CI/CD pipeline</li>
						<li>AWS</li>
					</ul>
				</ul>
			</div>
			<div class="col">
				<ul>
					<li>Design and CMS</li>
					<ul>
						<li>WordPress</li>
						<li>Figma</li>
					</ul>
				</ul>
			</div>
		</div>
	</div>
</template>

<script>
export default {
	name: 'Skills',
}
</script>

<style scoped lang="scss">
.skill__wrapper {
	display: flex;
	flex-direction: column;
	gap: 25px;
}
.skills {
	display: flex;
	max-width: 900px;

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
