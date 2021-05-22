# SurfaceBulmaWidgetsPlayground

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Install Node.js dependencies with `npm install` inside the `assets` directory
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Setting Up Bulma, Surface, and Surface Bulma Widgets

Add mix deps:

```elixir
      {:surface, "~> 0.4.0", override: true},
      {:surface_bulma_widgets, "~> 0.1.0", path: "../surface_bulma_widgets"},
```

Add CSS deps:

```sh
npm install bulma
npm install bulma-extensions
## Recommended:
npm install --save-dev css-width-scale-dc
npm i --save @fortawesome/fontawesome-free
```

Add CSS/SASS:
```css
@charset "utf-8";
@import "../node_modules/bulma/bulma.sass";
@import "../node_modules/@fortawesome/fontawesome-free/scss/fontawesome.scss";
@import "../node_modules/css-width-scale-dc/css/css-width-scale.css";
```

Replace default view:

```sh
sed -i 's|live "/", PageLive, :index|live "/", SurfaceWidgetsLive, :index|'  lib/*_web/router.ex
rm lib/surface_bulma_widgets_playground_web/live/page_live.ex
rm lib/surface_bulma_widgets_playground_web/live/page_live.html.leex
```
