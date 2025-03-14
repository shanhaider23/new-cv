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
					<h1>Courses & Certifications</h1>
					<li>Cypress App 101, Cypress Cloud 101</li>
					<ul>
						<li>Cypress.io</li>
					</ul>
					<li>Cypress End-to-End Testing</li>
					<ul>
						<li>Completed a 6-hour course led by Maximilian Schwarzmüller.</li>
					</ul>
					<li>GitHub Actions - The Complete Guide</li>
					<ul>
						<li>Completed an 11-hour course led by Maximilian Schwarzmüller.</li>
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
					<li>Complete IT Support Specialist Course</li>
					<ul>
						<li>IT Foundation, USA</li>
					</ul>
				</ul>
			</div>
		</div>
		<div class="contact-info">
			<h1>Contact</h1>
			<p>Email: <a href="mailto:shan.haider@gmail.com">shan.haider@gmail.com</a></p>
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
	display: flex;
	flex-direction: column;
	align-items: center;
	gap: 40px;
	padding: 20px;

	a {
		color: #2d6a4f;
		font-weight: bold;
		text-decoration: none;
		transition: color 0.3s;

		&:hover {
			text-decoration: underline;
			color: #1b4332;
		}
	}
}

.contact-info {
	text-align: center;
	background: #e9f5ee;
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
}

.skills {
	display: flex;
	flex-direction: column;
	align-items: center;
	max-width: 900px;
	background: #ffffff;
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
}

.col {
	width: 100%;
}

ul {
	list-style: none;
	padding: 0;
}

h1 {
	color: #2d6a4f;
	font-size: 1.5em;
	margin-bottom: 10px;
}

@media screen and (max-width: 850px) {
	.skills {
		padding: 15px;
	}

	.contact {
		gap: 20px;
	}
}
</style>
