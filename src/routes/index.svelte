<script lang="ts">
  import Experience from "../components/Experience.svelte";
  import Experiences from "../components/Experiences.svelte";
  import Landing from "../components/Landing.svelte";
  import Project from "../components/Project.svelte";
  import Projects from "../components/Projects.svelte";
  import Section from "../components/Section.svelte";
  import Skill from "../components/Skill.svelte";
  import Skills from "../components/Skills.svelte";
  import WatermarkHeader from "../components/WatermarkHeader.svelte";
  import Testimonial from "../components/Testimonial.svelte";
  import Button from "../components/Button.svelte";
  // import ContactForm from '../components/ContactForm.svelte';

  // The first time I got paid for development work, Pocket Trade Show
  let professionalStartDate: string = "08/01/2018";
  let millisecondsInYear: number = 31536000000;
  let yearsExperience: number = Math.floor(
    (new Date().getTime() - new Date(professionalStartDate).getTime()) /
      millisecondsInYear
  );

  // Log custom event in Google Analytics
  function logDownloadEvent() {
    // @ts-ignore
    firebase.analytics().logEvent("resume_download");
  }
</script>

<svelte:head>
  <title>Ubed Dev - Fullstack JS Developer</title>
</svelte:head>

<Section>
  <Landing
    title="Experienced"
    summary="Wong Biasa {yearsExperience} years experience, Specialized for NodeJS & Hybrid React Native."
    imageUrl="/caricature.png"
  >
    <span slot="cta">
      <Button href="#projects" buttonRow primary>view projects</Button><Button
        href="/ubaidillah_resume.pdf"
        buttonRow
        targetBlank
        on:click={logDownloadEvent}>download resume</Button
      >
    </span>
  </Landing>
</Section>

<Section id="skills" watermarkPadding dark>
  <WatermarkHeader title="skills" />
  <Skills>
    <Skill
      imageUrl="/skills/backend.svg"
      title="Backend Development"
      summary="<b>NodeJs (Express)</b>, <b>PHP (Lumen)</b> for <b>REST</b> services and <b>NodeJs</b> with <b>Apollo Server</b> for <b>GraphQL</b>. <b>MySQL</b>, <b>Postgre</b> DBs. <b>Eloquent, Sequelize</b> ORM."
    />

    <Skill
      imageUrl="/skills/web.svg"
      title="Web Development"
      summary="Responsive websites in <b>HTML5</b>, <b>CSS</b>. <b>Bootstrap</b> or <b>Semantic UI</b> Framework. <b>Redux</b>-based <b>ReactJs</b> applications in <b>ES6 JavaScript</b>, <b>React Hook</b>."
    />

    <Skill
      imageUrl="/skills/mobile.svg"
      title="Mobile Development"
      summary="<b>React Native</b> mobile apps for both <b>iOS</b> and <b>Android</b>. Deep Linking, Payment Gateway, Axios, React Navigation, Codepush, Push Navigation, Fingerprint."
    />
  </Skills>
</Section>

<Section watermarkPadding>
  <WatermarkHeader title="recommendation" />
  <Testimonial
    imageUrl="/testimonial/aldo.jpeg"
    quote="Specialist Backend Developer (REST API & GRAPHQL), pengalaman lebih dari 1,5 tahun. Memiliki Soft skill yang baik, open minded dan tidak mudah panik ,strong mentality person. Baik dalam menjaga komunikasi dan kenyamanan didalam tim. Paham flow business dan pernah mengerjakan project ERP module Sales & Procurement dengan skala yang tidak kecil."
    name="Aldo Ignata Chandra"
    position="Software Engineer at Virus Digital Indonesia"
  />
</Section>

<Section id="work" watermarkPadding dark>
  <WatermarkHeader title="work" />
  <Experiences>
    <Experience
      imageUrl="/work/codespace.jpeg"
      position="Founder, CEO, and Backend"
      company="CV Codespace Indonesia"
      startDate="Jan 2021"
      endDate="present"
      points={[
        "Create REST with lumen PHP and NodeJs",
        "Make Sequelize, Eloquent ORM and Raw Query Sometimes",
        "Ensure the company implements vision and mission to achieve the goals ",
        "Demonstrates what's possible",
      ]}
    />

    <Experience
      imageUrl="/work/interbiss.png"
      position="Software Engineer Backend"
      company="PT Integra Bisnis Solusi"
      startDate="Des 2019"
      endDate="present"
      points={[
        "Create ERP Project with Enterprise Scale",
        "Responsible for Mapping Business Process",
        "Develop Backend Enterprise Resource Planning with NodeJs, ExpressJs, Graphql with Sequelize ORM",
      ]}
    />

    <Experience
      imageUrl="/work/buatin.png"
      position="COO and CO-Founder"
      company="Buatin Indonesia"
      startDate="Mei 2018"
      endDate="Sep 2019"
      points={[
        "Responsible for Operational Activities in the Catering Business to Communicate with Partners and Catering Delivery.",
      ]}
    />

    <Experience
      imageUrl="/work/rssa.jpeg"
      position="Software Engineer Intern"
      company="RSUD Dr. Saiful Anwar Malang"
      startDate="Aug 2018"
      endDate="Okt 2018"
      points={[
        "Create Web Apps Scheduling For IPAL",
        "Create With Bootstrap Frontend Framework",
        "Create With Express NodeJs with Postgre DB",
      ]}
    />

    <Experience
      imageUrl="/work/self.jpg"
      position="Freelance Developer"
      company="Self Employee Project"
      startDate="Jan 2015"
      endDate="Okt 2018"
      points={["Project with Wordpress, Codeigniter Framework PHP, HTML etc"]}
    />
  </Experiences>
</Section>

<Section id="projects" watermarkPadding>
  <WatermarkHeader title="projects" />
  <!-- <Projects>
    <Project
      name="Creative FOSS"
      summary="Open Source Collaboration Tool"
      colourHex="#82b440"
      projectId="creative-foss"
      imageUrl="/project-thumbnails/creative-foss.png"
    />

    <Project
      name="Diet Driven"
      summary="Calorie Counter Mobile App"
      colourHex="#eaeceb"
      blackText
      projectId="diet-driven"
      imageUrl="/project-thumbnails/diet-driven.png"
    />

    <Project
      name="Chess"
      summary="Java Swing Game"
      colourHex="#e5e8ee"
      blackText
      projectId="chess"
      imageUrl="/project-thumbnails/chess.png"
    />

    <Project
      name="krasnov.dev"
      summary="Portfolio Website"
      colourHex="#578ffb"
      projectId="portfolio"
      imageUrl="/project-thumbnails/portfolio.png"
    />
  </Projects> -->
</Section>

<Section watermarkPadding dark>
  <WatermarkHeader title="education" />
  <Experiences>
    <Experience
      imageUrl="/education/ub.png"
      position="Bachelor of Computer Science"
      company="University of Brawijaya"
      startDate="Mar 2015"
      endDate="Sep 2019"
      points={[
        "Join many organization like BEM University, BEM Faculty, Hima Informatics and many event For Management Softskill",
        "Coursework: Project Management, data structure analysis, OOP programming in Java, algorithm analysis, computer architecture, Web Programming, Software Engineering",
      ]}
    />
  </Experiences>
</Section>

<!--<Section id="contact" watermarkPadding>-->
<!--    <WatermarkHeader title="contact" />-->
<!--    <ContactForm />-->

<!--</Section>-->
<style lang="scss"></style>
