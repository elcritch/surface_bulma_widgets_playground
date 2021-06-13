defmodule SurfaceBulmaWidgetsPlaygroundWeb.HomePageLive do
  use Surface.LiveView

  require Logger

  alias Surface.Components.LiveRedirect

  use SurfaceBulmaWidgets
  alias SurfaceBulmaWidgets.Components.CardWithIcon
  alias SurfaceBulmaWidgets.Layouts.{Columns, Column}

  alias SurfaceBulmaWidgets.UI.Flexer
  alias SurfaceBulmaWidgets.UI.RangedSlider
  alias SurfaceBulmaWidgets.UI.{NumberButton, NumberFlex}

  data count1, :integer, default: 10
  data count2, :integer, default: 80

  def render(assigns) do
    ~H"""
      <Columns multiline>
        <Column width=6>
          <CardWithIcon icon="fa-code" title="UI Components">
            <p>
              A set of common components that can be used in
              your projects, including buttons, dialogs, table grids
              and more. You can also use them as templates to
              create your own custom components.
            </p>

            <RangedSlider id="rl1" var={{bind(@count1)}}/>
            <RangedSlider id="rl2" var={{bind(@count2)}}/>

            <Flexer direction="column">
              <NumberButton id="ndl2" name="Count 2" value={{bind(@count2)}} digits=1/>
              <NumberButton id="ndl2.1" rounded=true name="Count 2" value={{bind(@count2)}} digits=1/>
              <NumberButton id="ndl2.3" rounded="left" name="Count 2" value={{bind(@count2)}} digits=1/>
            </Flexer>

            <Flexer direction="column" width=10>
              <NumberFlex id="ndl2" name="Count 2" value={{bind(@count2)}} digits=1/>
              <NumberFlex id="ndl3" name="Count 2" value={{bind(@count2)}} digits=1/>
              <NumberFlex id="ndl4" name="Count 2" value={{bind(@count2)}} digits=1/>
            </Flexer>

            <p><LiveRedirect label="Learn more" to="/uicomponents" /></p>
          </CardWithIcon>
        </Column>
        <Column width=4>
          <CardWithIcon icon="fa-power-off" title="Getting started">
            <p>
              Start building <strong>rich interactive user-interfaces</strong>,
              writing minimal custom Javascript now. For a quick start, choose one of the
              boilerplates projects or install Surface from scratch.
              <Flexer direction="column" justify="left" align="right" classes={{["px-2", "py-1"]}}>
                <NumberButton id="ndl3.1" rounded="left" name="Count 1a" value={{bind(@count2)}} digits=1/>
                <NumberButton id="ndl3.2" rounded="left" name="Cnt 2" value={{bind(@count2)}} digits=1/>
                <NumberButton id="ndl3.3" rounded="left" name="Count 2a" value={{bind(@count2)}} digits=1/>
              </Flexer>

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
      </Columns>
    """
  end

end
