<template>
	<div>
		<div class="ftic">
			<a class="button" href="https://www.dianox.com/" target="_blank">Dianox</a>
			<div class="expirience-job__list">
				<div class="expirience-job__item">Next.js</div>
				<div class="expirience-job__item">SCSS</div>
				<div class="expirience-job__item">TypeScript</div>
				<div class="expirience-job__item">AWS</div>
				<div class="expirience-job__item">Git</div>
				<div class="expirience-job__item">MongoDB</div>
			</div>
		</div>
		<div class="ftic">
			<a class="button" href="https://crypto-core.vercel.app/" target="_blank">Crypto Core</a>
			<div class="expirience-job__list">
				<div class="expirience-job__item">React,</div>
				<div class="expirience-job__item">Material UI</div>
				<div class="expirience-job__item">Firebase</div>
			</div>
		</div>
		<div class="ftic">
			<a class="button" href="https://staging-simply-name-it.herokuapp.com/profile" target="_blank">Simply Name it</a>
			<div class="expirience-job__list">
				<div class="expirience-job__item">React</div>
				<div class="expirience-job__item">Node</div>
				<div class="expirience-job__item">Express</div>
				<div class="expirience-job__item">MySQL</div>
			</div>
		</div>
		<div class="ftic">
			<a class="button" href="https://shan-meals-sharing.azurewebsites.net/home" target="_blank">Meal App</a>
			<div class="expirience-job__list">
				<div class="expirience-job__item">React</div>
				<div class="expirience-job__item">C#/.NET</div>
				<div class="expirience-job__item">MySQL</div>
				<div class="expirience-job__item">Azure</div>
			</div>
		</div>
		<div class="ftic">
			<a class="button" href="https://meal-sharing-shan.herokuapp.com/home" target="_blank">Meal Sharing App</a>
			<div class="expirience-job__list">
				<div class="expirience-job__item">React</div>
				<div class="expirience-job__item">Node</div>
				<div class="expirience-job__item">Express</div>
				<div class="expirience-job__item">MySQL</div>
			</div>
		</div>
		<div class="ftic">
			<a class="button" href="https://expenses-spliting-app.vercel.app/" target="_blank">Expense Splitting App</a>
			<div class="expirience-job__list">
				<div class="expirience-job__item">React</div>
				<div class="expirience-job__item">Node</div>
				<div class="expirience-job__item">Express</div>
				<div class="expirience-job__item">MySQL</div>
			</div>
		</div>
		<div class="ftic">
			<a class="button" href="https://admin-panel-shan.vercel.app/" target="_blank">Admin Panel</a>
			<div class="expirience-job__list">
				<div class="expirience-job__item">React</div>
				<div class="expirience-job__item">Chart.js</div>
			</div>
		</div>
		<div class="ftic">
			<a class="button" href="https://shan-weather.netlify.app/" target="_blank">Shan Weather App </a>
			<div class="expirience-job__list">
				<div class="expirience-job__item">JavaScript,</div>
				<div class="expirience-job__item">HTML/CSS</div>
			</div>
		</div>
		<div class="ftic">
			<a class="button" href="https://www.ellebaek-contact.com/" target="_blank">Ellebæk Contact Network</a>
			<a class="button" href="https://www.rentbike.nu/" target="_blank">Merry Cykler</a>

			<div class="expirience-job__list">
				<div class="expirience-job__item">WordPress</div>
			</div>
		</div>
	</div>
</template>

<script>
export default {
	name: 'FTIC',
}
</script>

<style scoped lang="scss">
.ftic {
	margin: 25px 0;
	.expirience-job__list,
	.expirience-job__projects {
		display: flex;
		gap: 5px;
	}
	.expirience-job__item {
		background-color: #ab58a4;
		color: white;
		padding: 6px;
		margin: 0.5em 0.375em 0 0;
		border-radius: 9999px;
		font-size: 0.8em;
	}
	.button {
		background: white;
		border-radius: 9999px;
		box-shadow: 0 5px 0 #ccc;
		color: black;
		display: inline-block;
		padding: 8px 16px;
		text-decoration: none;
		transition: transform 0.2s, box-shadow 0.2s;
		margin-bottom: 5px;
		margin-right: 5px;

		&:hover {
			background: #e5e5e5;
			box-shadow: 0 4px 0 #ccc;
			transform: translateY(1px);
		}

		&:active {
			box-shadow: 0 0 0 #ccc;
			transform: translateY(5px);
		}

		@media print {
			display: none;
		}
	}
}
</style>
