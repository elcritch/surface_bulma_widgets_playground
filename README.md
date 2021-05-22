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
      {:surface, "~> 0.4.0"},
      {:surface_bulma_widgets, "~> 0.1.0", path: "../surface_bulma_widgets"},
```

Add CSS deps:

```sh
npm install bulma
npm install bulma-extensions
```
