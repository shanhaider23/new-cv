<script>
import {Sections, SectionKeys} from '../constants.js'

export default {
	name: 'SupportingImage',
	props: {
		sectionKey: String,
	},
	computed: {
		style() {
			const background = Sections.get(this.sectionKey).color
			return `
          .supporting-image {
            background-color: ${background};
          }
          .layer .fill-bg {
            fill: ${background};
          }
        `
		},
	},
	render() {
		const {style} = this
		const sectionIndex = SectionKeys.indexOf(this.sectionKey)

		return (
			<div class="supporting-image">
				<div class="social">
					<a href="https://www.linkedin.com/in/shan-e-haider-bukhari-66316526/" target="_blank">
						<svg width="40px" height="40px" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
							<path
								d="M22 3.47059V20.5294C22 20.9194 21.845 21.2935 21.5692 21.5693C21.2935 21.8451 20.9194 22 20.5294 22H3.47056C3.08053 22 2.70648 21.8451 2.43069 21.5693C2.15491 21.2935 1.99997 20.9194 1.99997 20.5294V3.47059C1.99997 3.08056 2.15491 2.70651 2.43069 2.43073C2.70648 2.15494 3.08053 2 3.47056 2H20.5294C20.9194 2 21.2935 2.15494 21.5692 2.43073C21.845 2.70651 22 3.08056 22 3.47059V3.47059ZM7.88232 9.64706H4.94115V19.0588H7.88232V9.64706ZM8.14703 6.41176C8.14858 6.18929 8.10629 5.96869 8.02258 5.76255C7.93888 5.55642 7.81539 5.36879 7.65916 5.21039C7.50294 5.05198 7.31705 4.92589 7.1121 4.83933C6.90715 4.75277 6.68715 4.70742 6.46468 4.70588H6.41173C5.95931 4.70588 5.52541 4.88561 5.20549 5.20552C4.88558 5.52544 4.70585 5.95934 4.70585 6.41176C4.70585 6.86419 4.88558 7.29809 5.20549 7.61801C5.52541 7.93792 5.95931 8.11765 6.41173 8.11765V8.11765C6.63423 8.12312 6.85562 8.0847 7.06325 8.00458C7.27089 7.92447 7.46071 7.80422 7.62186 7.65072C7.78301 7.49722 7.91234 7.31346 8.00245 7.10996C8.09256 6.90646 8.14169 6.6872 8.14703 6.46471V6.41176ZM19.0588 13.3412C19.0588 10.5118 17.2588 9.41177 15.4706 9.41177C14.8851 9.38245 14.3021 9.50715 13.7798 9.77345C13.2576 10.0397 12.8142 10.4383 12.4941 10.9294H12.4117V9.64706H9.64703V19.0588H12.5882V14.0529C12.5457 13.5403 12.7072 13.0315 13.0376 12.6372C13.368 12.2429 13.8407 11.9949 14.3529 11.9471H14.4647C15.4 11.9471 16.0941 12.5353 16.0941 14.0176V19.0588H19.0353L19.0588 13.3412Z"
								stroke="#ffffff"
								stroke-linejoin="round"
							/>
						</svg>
					</a>

					<a href="https://github.com/shanhaider23" target="_blank">
						<svg
							width="40px"
							height="40px"
							viewBox="0 0 48 48"
							id="Layer_2"
							data-name="Layer 2"
							xmlns="http://www.w3.org/2000/svg"
							fill="white"
						>
							<defs>
								<style>.cls-1</style>
							</defs>
							<path
								class="cls-1"
								stroke="#ffffff"
								d="M24,2.5a21.5,21.5,0,0,0-6.8,41.9c1.08.2,1.47-.46,1.47-1s0-1.86,0-3.65c-6,1.3-7.24-2.88-7.24-2.88A5.7,5.7,0,0,0,9,33.68c-1.95-1.33.15-1.31.15-1.31a4.52,4.52,0,0,1,3.29,2.22c1.92,3.29,5,2.34,6.26,1.79a4.61,4.61,0,0,1,1.37-2.88c-4.78-.54-9.8-2.38-9.8-10.62a8.29,8.29,0,0,1,2.22-5.77,7.68,7.68,0,0,1,.21-5.69s1.8-.58,5.91,2.2a20.46,20.46,0,0,1,10.76,0c4.11-2.78,5.91-2.2,5.91-2.2a7.74,7.74,0,0,1,.21,5.69,8.28,8.28,0,0,1,2.21,5.77c0,8.26-5,10.07-9.81,10.61a5.12,5.12,0,0,1,1.46,4c0,2.87,0,5.19,0,5.9s.39,1.24,1.48,1A21.5,21.5,0,0,0,24,2.5"
								fill="white"
							/>
						</svg>
					</a>
				</div>

				<style>{style}</style>
				{SectionKeys.map((key, i) => {
					const Layer = Sections.get(key).image
					return <Layer class="layer" visible={i <= sectionIndex} />
				})}
			</div>
		)
	},
}
</script>

<style scoped lang="scss">
.supporting-image {
	// Background defined in component
	overflow: hidden;
	perspective: 1000px;
	position: relative;
	text-align: center;
	transition: background-color 0.5s;

	@media print {
		display: none;
	}
}

.layer {
	left: 50%;
	margin-left: -50%;
	margin-top: -110%;
	position: absolute;
	top: 70%;
	width: 100%;

	@media screen and (min-width: 1000px) {
		margin-left: -250px;
		margin-top: -550px;
		width: 500px;
	}
}
</style>

<style lang="scss">
.layer {
	.stroke {
		fill: none;
		stroke: #fff;
		stroke-linecap: round;
		stroke-linejoin: round;
		stroke-width: 2px;
	}

	.fill {
		fill: #fff;
	}

	.fill-bg {
		// Fill defined in component
		transition: fill 0.5s;
	}
}
.social {
	display: flex;
	justify-content: space-around;
	align-items: center;
	margin-top: 15px;
}
</style>
