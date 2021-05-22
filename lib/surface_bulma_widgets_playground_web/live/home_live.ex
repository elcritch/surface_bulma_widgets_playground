defmodule SurfaceBulmaWidgetsPlaygroundWeb.HomePageLive do
  use Surface.LiveView

  alias Surface.Components.LiveRedirect

  alias SurfaceBulmaWidgets.Components.CardWithIcon
  alias SurfaceBulmaWidgets.Layouts.{Columns, Column}

  def render(assigns) do
    ~H"""
      <Columns multiline>
        <Column width=4>
          <CardWithIcon icon="fa-power-off" title="Getting started">
            <p>
              Start building <strong>rich interactive user-interfaces</strong>,
              writing minimal custom Javascript now. For a quick start, choose one of the
              boilerplates projects or install Surface from scratch.
            </p>
            <p><LiveRedirect to="/getting_started">Learn more</LiveRedirect></p>
          </CardWithIcon>
        </Column>
        <Column width=4>
          <CardWithIcon icon="fa-book" title="Documentation">
            <p>
              The basic idea and motivation behind <b>Surface</b>, introducing the
              all the main features along with <strong>live examples</strong> and detailed explanation to
              help you to get started.
            </p>
            <p><LiveRedirect label="Learn more" to="/documentation" /></p>
          </CardWithIcon>
        </Column>
        <Column width=4>
          <CardWithIcon icon="fa-code" title="UI Components">
            <p>
              A set of common components that can be used in
              your projects, including buttons, dialogs, table grids
              and more. You can also use them as templates to
              create your own custom components.
            </p>
            <p><LiveRedirect label="Learn more" to="/uicomponents" /></p>
          </CardWithIcon>
        </Column>
        <Column width=4>
          <CardWithIcon icon="fa-code" title="UI Components">
            <p>
              A set of common components that can be used in
              your projects, including buttons, dialogs, table grids
              and more. You can also use them as templates to
              create your own custom components.
            </p>
            <p><LiveRedirect label="Learn more" to="/uicomponents" /></p>
          </CardWithIcon>
        </Column>
      </Columns>
    """
  end
end
