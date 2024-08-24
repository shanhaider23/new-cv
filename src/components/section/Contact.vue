<template>
	<div class="contact">
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
		</div>
		<p>Brøndby, Copenhagen Denmark</p>
		<p>Email: <a href="mailto:shan.haider@gmail.com">shan.haider@gmail.com</a>.</p>
		<p>+4591439592</p>
	</div>
</template>

<script>
export default {
	name: 'Contact',
}
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
}
</style>
