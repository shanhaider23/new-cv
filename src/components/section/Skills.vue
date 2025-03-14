<template>
	<div class="skills-wrapper">
		<div class="skills-grid">
			<div class="skill-category" v-for="(skills, category) in skillSet" :key="category">
				<h3 class="category-title">{{ category }}</h3>
				<ul class="skill-list">
					<li v-for="skill in skills" :key="skill" class="skill-item">{{ skill }}</li>
				</ul>
			</div>
		</div>
	</div>
</template>

<script>
export default {
	name: 'Skills',
	data() {
		return {
			skillSet: {
				'Frontend Development': [
					'Vue.js',
					'React',
					'Next.js',
					'JavaScript',
					'TypeScript',
					'SCSS, SASS, LESS',
					'Bootstrap, Tailwind CSS',
					'Element UI, MUI, Shadcn/ui',
				],
				'Backend Development': ['Node.js', 'Express.js', 'Python', 'Django', 'Flask'],
				Testing: ['Cypress End to End', 'Cypress Component'],
				Database: ['MongoDB', 'MySQL', 'Firebase'],
				DevOps: ['GitHub Actions', 'Docker', 'CI/CD pipeline', 'AWS'],
				'Design & CMS': ['WordPress', 'Figma'],
			},
		}
	},
}
</script>

<style scoped>
.skills-wrapper {
	display: flex;
	justify-content: center;
	padding: 20px;
	width: 100%;
}

.skills-grid {
	display: grid;
	grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
	gap: 20px;
	width: 100%;
	max-width: 1100px;
}

.skill-category {
	background: #fff;
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	transition: transform 0.2s;
	text-align: center;
}

.skill-category:hover {
	transform: translateY(-5px);
}

.category-title {
	font-size: 1.2em;
	font-weight: bold;
	color: #333;
	margin-bottom: 10px;
	text-align: center;
}

.skill-list {
	list-style: none;
	padding: 0;
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
}

.skill-item {
	display: inline-flexbox;
	background-color: #eece9a;
	border-radius: 10px;
	font-size: 1em;
	margin: 5px;
	padding: 5px 10px;
}
</style>
