<script lang="ts">
  import FooterButton from "./FooterButton.svelte";
  import Section from "./Section.svelte";

  let currentYear: number = new Date().getFullYear();
</script>

<footer>
  <Section>
    <div class="social">
      <FooterButton url="https://github.com/ubaidillahhf" icon="github" />
      <FooterButton url="https://www.gitlab.com/ubaidillahhf" icon="gitlab" />
      <FooterButton
        url="https://www.linkedin.com/in/ubaidillahhf"
        icon="linkedin-in"
      />
      <FooterButton
        url="https://www.hackerrank.com/ubaidillahhf"
        icon="hackerrank"
      />
    </div>
    <div class="copyright">
      © {currentYear} Ubaidillah Hakim Fadly.
      <!-- https://www.flaticon.com/authors/basic-miscellany/flat/ -->
      <div>
        Icons made by <a
          href="https://www.flaticon.com/authors/smashicons"
          title="Smashicons">Smashicons</a
        >
        from
        <a href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a
        >
      </div>
    </div>
  </Section>
</footer>

<style lang="scss">
  .social {
    display: flex;
    flex-flow: row nowrap;
    justify-content: center;

    margin: 80px 0 0 0;
  }

  .copyright {
    margin: 20px 0 30px 0;
    text-align: center;
    line-height: 22px;

    color: #525f7f;

    div {
      font-size: 12px;

      a {
        color: #525f7f;
      }
    }
  }
</style>
