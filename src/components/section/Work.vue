<template>
  <div class="work">
    <Company
      name="Facebook"
      :from="new Date(2017, 6)"
    >
      <li>Tech lead on Portal for Work team, aiming to bring Facebook's video conferencing hardware to external companies</li>
      <li>Overseeing delivery of multiple major projects working with design, project management and dozens of developers across multiple teams</li>
      <li>Organised and hosted company-wide conference for front-end developers</li>
      <li>Won an award for efficiency improvements and delivered a presentation to the CEO, CFO &amp; thousands of co-workers</li>
    </Company>
    <Company
      name="IRESS"
      contract
      :from="new Date(2016, 10)"
      :to="new Date(2017, 1)"
    >
      <li>Helped ship version 1.0 of PRIME, a CRM tool for financial planners</li>
    </Company>
    <Company
      name="Holler"
      contract
      :from="new Date(2016, 2)"
      :to="new Date(2016, 9)"
    >
      <li>3 month contract with multiple extensions</li>
      <li>Lead developer on a project to rebuild Holler's website using React</li>
      <li>Led the switch from gulp to webpack</li>
      <li>Introduced code reviews &amp; pull requests to improve reliability</li>
    </Company>
    <Company
      name="StageMe"
      contract
      :from="new Date(2015, 1)"
      :to="new Date(2016, 1)"
    >
      <li>Workshopped and built customer-facing website</li>
      <li>Made use of modern technologies including gulp, CoffeeScript, SCSS, and CSS flexbox</li>
    </Company>
    <Company
      name="Westfield Labs"
      contract
      :from="new Date(2014, 10)"
      :to="new Date(2015, 2)"
    >
      <li>Contributed to the redevelopment of UK, US, and Australian websites</li>
      <li>Worked closely with an international team, including designers &amp; developer in Australia, USA, and Argentina</li>
    </Company>
    <Company
      name="The White Agency"
      contract
      :from="new Date(2014, 7)"
      :to="new Date(2014, 10)"
    >
      <li>Developed many JS heavy webapps including a canvas beer label designer for internal use at Lion Nathan</li>
      <li>Rebuilt White Agency website with GSAP transitions &amp; HTML5 history API</li>
      <li>Led the introduction of a new toolchain (including Gulp, SASS, Compass, JSHint)</li>
    </Company>
    <Company
      name="Atlassian"
      :from="new Date(2014, 4)"
      :to="new Date(2014, 7)"
    >
      <li>Built internal tool featuring a chat bot that would help schedule company &amp; social events from within HipChat</li>
      <li>Despite interviewing as a front end developer, the team I joined was expecting a Java dev, so I left after it became clear I wouldn't be able to be productive in my team or transfer to a more suitable team</li>
    </Company>
    <Company
      name="Nearmap"
      contract
      :from="new Date(2013, 5)"
      :to="new Date(2014, 4)"
    >
      <li>3 month contract with multiple extensions</li>
      <li>Led a project to rebuild the company's primary product, a map browser, from the ground up in order to improve ease-of-use and reduce technical debt</li>
      <li>Worked on UX, design, and front end development</li>
      <li>Built new sales site specifically for select industries, and rebuilt main sales site</li>
    </Company>
    <Company
      name="HotHouse"
      :from="new Date(2012, 7)"
      :to="new Date(2013, 5)"
    >
      <li>Lead developer (full-stack) in a project to gamify toyota.com.au in order to give away two RAV4s</li>
    </Company>
    <Company
      name="Corporate Interactive"
      :from="new Date(2012, 0)"
      :to="new Date(2012, 7)"
    >
      <li>Built over fifty new websites over the course of eight months</li>
    </Company>
    <Company
      name="Radioinfo"
      :from="new Date(2010, 1)"
      :to="new Date(2013, 4)"
    >
      <li>Maintained &amp; updated Django website for two years as their sole developer.</li>
      <li>Built frontend &amp; backend of new website (featuring new design &amp; new CMS)</li>
    </Company>
  </div>
</template>

<script>
import Company from '../Company.vue';

export default {
  name: 'Work',
  components: {
    Company,
  },
};
</script>

<style scoped lang="scss">
.work {
}
</style>
