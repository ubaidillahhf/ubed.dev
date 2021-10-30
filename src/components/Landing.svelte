<script lang="ts">
  export let imageUrl: string;
  export let title: string;
  export let summary: string;
</script>

<div class="landing-container">
  <div class="lhs">
    <h1>{title}<span>JS </span><br />Developer</h1>
    <p>{@html summary}</p>

    <div class="cta">
      <slot name="cta" />
    </div>
  </div>
  <img src={imageUrl} alt="Landing" />
</div>

<style lang="scss">
  @import "../styles/constants.scss";

  .landing-container {
    display: grid;
    height: 80vh;
    padding: 32px 0 80px 0; // FIXME

    @media (min-width: $landing-page-breakpoint) {
      & {
        grid-template-columns: 0.55fr 0.45fr;
        gap: 0 40px;

        padding: 64px 0 120px 0; // FIXME

        // Height of lhs when p spans 2 lines
        min-height: 264px;
      }
    }
  }

  .lhs {
    margin-top: 200px;
    h1 {
      font-weight: 600;
      margin: 0 0 20px 0;
      font-size: 34px;
      line-height: 44px;

      color: #3eb489;
      transition: all 0.25s ease;

      @media (min-width: $landing-page-breakpoint) {
        & {
          font-size: 42px;
          line-height: 52px;
        }
      }

      span {
        font-weight: 900;
        margin-left: 12px;
        color: #f5d372;
      }
    }

    p {
      font-weight: 300;
      font-size: 23px;
      line-height: 35px;

      color: #525f7f;
    }

    .cta {
      margin: 0 0 0 0;

      @media (min-width: $landing-page-breakpoint) {
        & {
          margin: 15px 0 0 0;
        }
      }
    }
  }

  img {
    margin-top: 150px;
    width: 100%;
    object-fit: contain;
    height: 264px;
    user-select: none;

    @media (max-width: $landing-page-breakpoint) {
      & {
        display: none;
      }
    }
  }
</style>
