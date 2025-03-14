<template>
	<div class="projects-container">
		<div v-for="(project, index) in projects" :key="index" class="project-card">
			<a :href="project.link" target="_blank">
				<img :src="project.image" :alt="project.name" class="project-image" />
			</a>
			<div class="project-info">
				<a class="button" :href="project.link" target="_blank">{{ project.name }}</a>
				<p>{{ project.description }}</p>
				<div class="expirience-job__list">
					<div v-for="(tech, i) in project.tech" :key="i" class="expirience-job__item">{{ tech }}</div>
				</div>
			</div>
		</div>
	</div>
</template>

<script>
export default {
	name: 'ProjectShowcase',
	data() {
		return {
			projects: [
				{
					name: 'Finova',
					link: 'https://finova-dk.vercel.app/',
					image: '/images/finova.png',
					description:
						'Finova is a smart financial management app that provides automated insights into spending habits, savings trends, and investment opportunities. Powered by AI and data analytics, Finova helps users track expenses, optimize budgets, and make informed financial decisions with interactive dashboards and personalized recommendations. 🚀💰',
					tech: [
						'Next.js',
						'React',
						'Redux',
						'TailwindCSS',
						'Recharts/D3.js',
						'Django',
						'Django REST Framework',
						'PostgreSQL',
						'Docker',
						'AI & Data Analytics',
					],
				},
				{
					name: 'Oasis Hotel',
					link: 'https://hotel-booking-shan.vercel.app/',
					image: '/images/wild.png',
					description:
						'HotelBooking is a modern and seamless hotel reservation platform that allows users to search, book, and manage hotel stays effortlessly. With an intuitive interface and real-time availability updates, it simplifies the booking process for travelers while providing hotels with efficient reservation management. 🏨✨',
					tech: ['Next.js', 'React', 'Redux', 'TailwindCSS', 'Supabase', 'Vercel'],
				},
				{
					name: 'Oasis Hotel Software',
					link: 'https://hotel-software.netlify.app/',
					image: '/images/hotel.png',
					description:
						'Oasis Hotel is an intuitive hotel management dashboard Software designed to streamline operations for hotels and cabins. It offers real-time booking insights, revenue tracking, and guest management through an interactive and user-friendly interface. With data-driven analytics and seamless integrations, it enhances efficiency and optimizes hotel performance. 🏨📊',
					tech: ['React', 'Redux', 'TailwindCSS', 'Supabase', ' Netlify'],
				},
				{
					name: 'Weather with Advice',
					link: 'https://weather-dk.vercel.app/',
					image: '/images/weather.png',
					description:
						'Weather DK is a smart weather forecasting app that provides real-time weather updates, temperature trends, and historical exchange rate data. It goes beyond basic forecasts by offering AI-driven advice based on weather conditions, helping users make informed decisions—whether its planning outdoor activities, dressing appropriately, or preparing for severe weather. 🌤️📊✨',
					tech: ['Next.js', 'React', 'TailwindCSS', 'Vercel', 'AI & Data Analytics'],
				},
				{
					name: 'E Commerce',
					link: 'https://best-seller-mgfe.vercel.app/',
					image: '/images/bestseller.png',
					description:
						'BestSeller is a dynamic e-commerce platform designed for seamless product discovery and online shopping. It offers a smooth user experience with real-time product listings, intuitive navigation, and secure checkout. Built for scalability and performance, BestSeller ensures a hassle-free shopping experience for both customers and sellers. 🛍️🚀',
					tech: ['Vue.js', 'SCSS', 'Vercel'],
				},

				{
					name: 'Book Enthusiasts',
					link: 'https://book-enthusiasts.vercel.app/',
					image: '/images/book.png',
					description:
						'Book Enthusiasts is a vibrant platform designed for book lovers to discover, explore, and discuss their favorite reads. It offers personalized book recommendations, community-driven reviews, and an intuitive catalog of diverse genres. Whether you are looking for your next great read or engaging with fellow bibliophiles, Book Enthusiasts is your go-to destination! 📚✨',
					tech: ['Next.js', 'React', 'Tailwind CSS'],
				},
				{
					name: 'Crypto Core',
					link: 'https://crypto-core.vercel.app/',
					image: '/images/crypto-core.png',
					description:
						'Crypto Core is a comprehensive cryptocurrency tracking platform that provides real-time price updates, trends, and market analysis. It allows users to monitor their favorite cryptocurrencies, compare price changes, and view historical data for smarter investment decisions. With a clean interface and powerful features, Crypto Core is a must-have tool for crypto enthusiasts. 💰📊🚀',
					tech: ['React', 'Material UI', 'Firebase'],
				},

				{
					name: 'Workout Map',
					link: 'https://workout-map-psi.vercel.app/',
					image: '/images/mapty.png',
					description:
						'Workout Map is a fitness tracking app designed to help users plan, log, and track their workouts with ease. It offers an interactive map to visualize workout routes, sets, and exercises, along with progress tracking to monitor improvements over time. Whether you are into running, cycling, or strength training, Workout Map helps you stay motivated and reach your fitness goals. 🏋️‍♀️🏃‍♂️📍',
					tech: ['Vanilla.js', 'Tailwind CSS'],
				},
				{
					name: 'Travel App',
					link: 'https://travel-wise-five.vercel.app/',
					image: '/images/worldwise.png',
					description:
						'Travel Wise is a travel planning app that helps users discover destinations, plan itineraries, and explore recommendations for their next adventure. With a clean interface and real-time information, users can easily find the best travel options, activities, and tips for making the most of their trips. 🌍✈️🗺️',
					tech: ['React', 'Maps'],
				},
				{
					name: 'World Weather',
					link: 'https://world-weather-shan.vercel.app/',
					image: '/images/map.png',
					description: 'A responsive weather app delivering real-time global weather data.',
					tech: ['React', 'Maps', 'TypeScript'],
				},
				{
					name: 'Weather App',
					link: 'https://weather-app-shan.vercel.app/',
					image: '/images/rain.png',
					description: 'A weather app offering real-time temperature, humidity, and wind speed.',
					tech: ['Vue3', 'Vite', 'CSS'],
				},
				{
					name: 'Recipe Hub',
					link: 'https://recipe-hub-five.vercel.app/',
					image: '/images/recipe.png',
					description: 'A user-friendly app for searching and bookmarking recipes.',
					tech: ['Vanilla.js', 'Tailwind CSS'],
				},
				{
					name: 'Blog',
					link: 'https://blog-app-write-gold.vercel.app/',
					image: '/images/blog.png',
					description: 'A blog app demonstrating Appwrite integration for backend services.',
					tech: ['React', 'Appwrite', 'Tailwind CSS'],
				},
				{
					name: 'Simply Name It',
					link: 'https://github.com/HackYourFuture-CPH/simply-name.it',
					image: '/images/simply.png',
					description: 'A collaborative app for candidate ranking on decision-making boards.',
					tech: ['React', 'Node', 'Express', 'MySQL'],
				},
				{
					name: 'Currency Converter 4U',
					link: 'https://currency-converter4u.vercel.app/',
					image: '/images/currency.png',
					description:
						'Currency Converter 4U is a simple and efficient tool for converting currencies in real-time. With a user-friendly interface, it allows users to easily select currencies and view up-to-date exchange rates, making international transactions and travel planning hassle-free. The app also provides historical exchange rate data, helping users track trends over time. 💱🌍',
					tech: ['React', 'TailwindCSS'],
				},
			],
		}
	},
}
</script>

<style scoped lang="scss">
.projects-container {
	display: grid;
	grid-template-columns: repeat(auto-fit, minmax(320px, 1fr));
	gap: 20px;
	padding: 20px;
}

.project-card {
	background: white;
	border-radius: 12px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	overflow: hidden;
	transition: transform 0.2s;
	text-align: center;

	&:hover {
		transform: translateY(-5px);
	}
}

.project-image {
	width: 100%;
	height: 200px;
	object-fit: fill;
	cursor: pointer;
}

.project-info {
	padding: 15px;
}

.expirience-job__list {
	display: flex;
	flex-wrap: wrap;
	gap: 5px;
	justify-content: center;
	margin-top: 10px;
}

.expirience-job__item {
	background-color: #ab58a4;
	color: white;
	padding: 6px 10px;
	border-radius: 9999px;
	font-size: 0.8em;
}

.button {
	display: inline-block;
	background: #d5abd1;
	color: rgb(0, 0, 0);
	padding: 8px 16px;
	border-radius: 9999px;
	text-decoration: none;
	font-weight: bold;
	margin-top: 10px;

	&:hover {
		background: #357abd;
	}
}
</style>
