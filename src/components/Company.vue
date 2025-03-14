<template>
	<div class="company">
		<div class="left">
			<div class="name">
				{{ name }}
			</div>
			<div class="post">
				{{ post }}
			</div>
			<div class="freelance" v-if="contract">Remote</div>
			<div class="freelance" v-if="volunteering">Volunteering</div>
			<div class="dates">{{ formatDate(from) }} &ndash; {{ formatDate(to) }}<br /></div>
		</div>
		<div class="right">
			<slot></slot>
		</div>
	</div>
</template>

<script>
import {Months} from '../constants.js'

export default {
	name: 'Company',
	props: {
		name: String,
		post: String,
		volunteering: Boolean,
		contract: Boolean,
		from: Date,
		to: Date,
	},
	methods: {
		formatDate(d) {
			if (d == null) {
				return 'Present'
			}
			return `${Months[d.getMonth()]} ${d.getFullYear()}`
		},
	},
}
</script>

<style scoped lang="scss">
.company {
	display: flex;
	align-items: flex-start;
	gap: 20px;
	page-break-inside: avoid;
	padding: 16px;
	border-radius: 8px;
	background: #f9f9f9;
	box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);

	&:not(:last-child) {
		margin-bottom: 32px;
	}

	.left {
		flex: 1 0 6.25rem;
	}

	.right {
		color: #364;
		flex: 2 0 250px;
		font-size: 0.875em;
		line-height: 1.5;
		margin-left: 20px;

		li:not(:last-child) {
			margin-bottom: 8px;
		}
	}

	.name {
		color: #2d6a4f;
		font-size: 1.5em;
		font-weight: bold;
		margin-bottom: 8px;
	}

	.post {
		color: #40916c;
		font-size: 1.125em;
		font-weight: 600;
		margin-bottom: 8px;
	}

	.dates {
		font-size: 0.875em;
		line-height: 1.4;
		margin-bottom: 8px;
		text-transform: uppercase;
		color: #555;
	}

	.freelance {
		background: #52b788;
		border-radius: 4px;
		color: white;
		display: inline-block;
		font-size: 0.75em;
		padding: 5px 10px;
		margin-right: 8px;
		font-weight: bold;
	}

	.expirience-job__list,
	.expirience-job__projects {
		display: flex;
		gap: 5px;
		flex-wrap: wrap;
	}

	.expirience-job__projects a {
		text-decoration: none;
		color: #2d6a4f;
		font-weight: 600;
		transition: color 0.3s;
	}

	.expirience-job__projects a:hover {
		color: #1b4332;
	}

	.expirience-job__item {
		background-color: #74c69d;
		color: white;
		padding: 6px 12px;
		border-radius: 9999px;
		font-size: 0.85em;
		font-weight: bold;
	}

	@media screen and (max-width: 850px) {
		display: block;

		.right {
			margin-left: 0;
			margin-top: 16px;
		}
	}
}
</style>
