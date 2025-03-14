<template>
	<div class="welcome">
		<Logo class="logo" />
		<div>
			<h1>Shan-e-Haider Bukhari</h1>
			<h2>Senior Full Stack Developer</h2>
			<p class="info-card">
				With 5 years of experience spanning multiple industries, I specialize as a Frontend Developer with proficiency in backend technologies
				and UI/UX design. I excel at crafting intuitive, visually appealing applications, producing maintainable and scalable code, and
				implementing user-first design systems with a focus on quality and performance. My expertise includes optimizing codebases,
				implementing clean coding practices, and refining design systems to deliver efficient and impactful solutions. Beyond my technical
				expertise, I value patience and perseverance, staying calm under pressure, and striving for growth.
			</p>
		</div>
	</div>
</template>

<script>
import Logo from '../../assets/logo.svg'

export default {
	name: 'Welcome',
	components: {Logo},
}
</script>

<style scoped lang="scss">
.welcome {
	align-items: center;
	display: flex;
	flex-direction: column;
	flex-grow: 1;
	justify-content: center;
	text-align: center;

	.logo {
		height: 64px;
		margin-bottom: 32px;
		width: 64px;
	}
	h1 {
		font-size: 45px;
		color: #333;
		margin-bottom: 10px;
		font-weight: 600;
		text-align: center;
	}

	h2 {
		font-size: 35px;
		color: #555;
		margin-bottom: 16px;
		font-weight: 500;
		text-align: center;
	}
	.info-card {
		padding: 32px;

		background: white;
		border-radius: 12px;
		box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
		overflow: hidden;
		transition: transform 0.2s;
		text-align: center;

		&:hover {
			transform: translateY(-5px);
		}

		p {
			font-size: 25px;
			color: #666;
			line-height: 1.6;
			font-family: 'Arial', sans-serif;
			text-align: center;
		}
	}
}
</style>
