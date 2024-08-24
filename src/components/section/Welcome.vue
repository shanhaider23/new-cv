<template>
	<div class="welcome">
		<Logo class="logo" />
		<h1>Shan-e-Haider Bukhari</h1>

		<h2>Full Stack developer</h2>
		<p>
			Enthusiastic and detail-oriented Full-stack Developer with more than four years of demonstrated expertise in frontend development.
			Well-versed in a multitude of technologies, frameworks, and libraries, including, but not limited to Vue.js, React, Next.js, TypeScript,
			JavaScript, Node.js, CSS Frameworks, MySQL, MongoDB, Firebase, AWS, Git, and others.Ability to work as part of a team and work
			independently. Passionate about continuous learning and staying up-to-date with the latest industry trends.
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
