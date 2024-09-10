<template>
	<div class="welcome">
		<Logo class="logo" />
		<h1>Shan-e-Haider Bukhari</h1>

		<h2>Full Stack developer</h2>
		<p>
			Experienced Full Stack Developer with 4+ years in the industry, proficient in both frontend and backend technologies including Vue.js,
			React, Next.js, TypeScript, JavaScript, Node.js, CSS Frameworks, MySQL, MongoDB, Firebase, AWS, Git, and more. I have a proven track
			record of developing scalable web applications, and integrating complex databases. My passion lies in creating efficient, robust, and
			scalable applications that deliver seamless user experiences. My ability to collaborate effectively with cross-functional teams and my
			passion for staying updated with the latest industry trends have been key drivers in my career.
		</p>
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
		font-size: 42px;
	}
}
</style>
