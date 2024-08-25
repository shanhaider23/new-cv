<template>
	<div class="contact">
		<div class="skills">
			<div class="col">
				<ul>
					<li>C#/.Net</li>
					<ul>
						<li>Visma Denmark (Jan 2022 — May 2022)</li>
					</ul>
					<li>Full-Stack Developer</li>
					<ul>
						<li>Hack Your Future (Nov 2020 — Aug 2021 Copenhagen)</li>
					</ul>
					<li>Master in Analytical Chemistry</li>
					<ul>
						<li>University of Oslo, Norway (Aug 2008 — Sep 2010)</li>
					</ul>
					<li>Cypress End-to-End Testing</li>
					<ul>
						<li>Completed a 6-hour course led by Maximilian Schwarzmüller.</li>
					</ul>
					<li>GitHub Actions - The Complete Guide</li>
					<ul>
						<li>Completed a 11-hour course led by Maximilian Schwarzmüller.</li>
					</ul>
					<li>Docker & Kubernetes: The Practical Guide [2024 Edition]</li>
					<ul>
						<li>Completed a 25-hour course led by Maximilian Schwarzmüller.</li>
					</ul>
					<li>Search Engine Optimization</li>
					<ul>
						<li>Completed a three-month course offered by the Ministry of Science and Technology, Pakistan.</li>
					</ul>
					<li>WordPress, Freelancing</li>
					<ul>
						<li>Completed a three-month course offered by the Ministry of Science and Technology, Pakistan.</li>
					</ul>
					<li>Completer IT Support Specialist Course</li>
					<ul>
						<li>IT Foundation, USA</li>
					</ul>
				</ul>
			</div>
		</div>
		<div class="contact-info">
			<h1>Contact</h1>
			<p>Email: <a href="mailto:shan.haider@gmail.com">shan.haider@gmail.com</a>.</p>
			<p>Phone: +4591439592</p>
		</div>
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
	.contact-info {
		margin-top: 100px;
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
