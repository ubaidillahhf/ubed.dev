<script lang="ts">
  export let href: string;
  export let buttonRow: boolean = false;
  export let primary: boolean = false;
  export let targetBlank: boolean = false;

  $: buttonRowClass = buttonRow ? "button-row" : "";
  $: primarySecondaryClass = primary ? "primary" : "secondary";
  $: targetBlankAttribute = targetBlank ? "_blank" : "_self";
</script>

<!-- Event forward on:click -->
<a
  {href}
  class="{buttonRowClass} {primarySecondaryClass}"
  target={targetBlankAttribute}
  on:click><slot /></a
>

<style lang="scss">
  @import "../styles/constants.scss";

  // Inspired by https://stripe.com

  a {
    color: white;
    white-space: nowrap;
    display: inline-block;
    height: 40px;
    line-height: 40px;
    padding: 0 14px;
    -webkit-box-shadow: 0 4px 6px rgba(50, 50, 93, 0.11),
      0 1px 3px rgba(0, 0, 0, 0.08);
    box-shadow: 0 4px 6px rgba(50, 50, 93, 0.11), 0 1px 3px rgba(0, 0, 0, 0.08);
    background: #fff;
    background-color: rgb(255, 255, 255);
    border-radius: 4px;
    font-size: 15px;
    font-weight: 600;
    text-transform: uppercase;
    letter-spacing: 0.025em;
    text-decoration: none;
    -webkit-transition: all 0.15s ease;
    transition: all 0.15s ease;

    &.button-row {
      margin: 15px 12px 0 0;
    }

    &.primary {
      background-color: #3eb489;
    }

    &.secondary {
      background-color: #32325d;
    }

    &:hover {
      box-shadow: 0 7px 14px rgba(50, 50, 93, 0.1),
        0 3px 6px rgba(0, 0, 0, 0.08);
      transform: translateY(-2px);
    }
  }
</style>
