<template>
	<div class="skills">
		<div class="col">
			<ul>
				<li>Frameworks</li>
				<ul>
					<li>Vue.js</li>
					<li>React</li>
					<li>Next.js</li>
				</ul>
				<li>JavaScript</li>
				<ul>
					<li>ES6</li>
					<li>TypeScript</li>
				</ul>
			</ul>
		</div>
		<div class="col">
			<ul>
				<li>CSS</li>
				<ul>
					<li>SCSS</li>
					<li>SASS</li>
					<li>Less</li>
				</ul>
				<li>Design</li>
				<ul>
					<li>Figma</li>
					<li>WordPress</li>
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
				<li>Testing</li>
				<ul>
					<li>End to End</li>
					<li>Component</li>
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
				<li>Node.js</li>
				<ul>
					<li>Express.js</li>
				</ul>
			</ul>
		</div>
	</div>
</template>

<script>
export default {
	name: 'Skills',
}
</script>

<style scoped lang="scss">
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
