defmodule SurfaceBulmaWidgetsPlaygroundWeb.HomePageLive do
  use Surface.LiveView

  require Logger

  alias Surface.Components.LiveRedirect

  use SurfaceBulmaWidgets
  alias SurfaceBulmaWidgets.Components.CardWithIcon
  alias SurfaceBulmaWidgets.Components.Card
  # alias SurfaceBulma.Modal.Card
  alias SurfaceBulmaWidgets.Layouts.{Columns, Column}

  alias SurfaceBulmaWidgets.UI.Flexer
  alias SurfaceBulmaWidgets.UI.RangedSlider
  alias SurfaceBulmaWidgets.UI.Dropdown
  alias SurfaceBulmaWidgets.UI.Select

  alias SurfaceBulmaWidgets.UI.{NumberButton, NumberTag, NumberFlex}
  alias SurfaceBulmaWidgets.Components.ModalFieldEditor

  alias SurfaceBulmaWidgets.UI.Forms.NumberInput

  alias SurfaceBulma.Modal

  data count1, :integer, default: 10
  data count2, :integer, default: 80
  data count3, :number, default: 0.4

  data num_editor, :number, default: 0.1

  def render(assigns) do
    ~F"""
      <Columns multiline>
        <Column width=6>
          <Card icon="fa-code" title="UI Components">
            <p>
              A set of common components that can be used in
              your projects, including buttons, dialogs, table grids
              and more. You can also use them as templates to
              create your own custom components.
            </p>

            <RangedSlider id="rl1" name="C1" widths={label: 4, number: 3, progress: 2}
                            min={30} max={140} step={10} digits="3.0" var={bind(@count1)}/>
            <RangedSlider id="rl2" max={1.0} step={0.1} var={bind(@count3)}/>

            <Dropdown id="d1" prefix="test: " hoverable=true integers=true var={bind(@count2)} items={[40, 50, 60]} />
            <Dropdown id="d2" var={bind(@count2)} hoverable=true integers=true items={[40, 50, 60]} />

            <ModalFieldEditor id="edi3" var={bind(@num_editor)}>
            </ModalFieldEditor>
          </Card>

          <CardWithIcon icon="fa-code" title="UI Components">
            <p>
              Various "Number" formats
            </p>

            <h2>Number Buttons</h2>
            <Flexer id="f1" direction="column">
              <NumberButton id="ndl2" name="Count 1" value={bind(@count1)} digits="0.1"/>
              <NumberButton id="ndl2.1" rounded=true name="Count 2" value={bind(@count2)} digits=".2"/>
              <NumberButton id="ndl2.3" rounded="left" name="Count 3" value={bind(@count3)} digits="4.1"/>
            </Flexer>

            <h2>Number Tags</h2>
            <Flexer id="t1" direction="row" justify="space-evenly" align_items="flex-start">
              <NumberTag id="nfl2" name="Count 1" value={bind(@count1)} digits="5.0" widths={number: 3}/>
              <NumberTag id="nfl2.1" rounded=true name="Count 2" value={bind(@count2)} digits="0.1"/>
              <NumberTag id="nfl2.3" rounded="left" name="Count 3" value={bind(@count3)} digits="0.1"/>
            </Flexer>

            <h2>Number Flex</h2>
            <Flexer id="f3" direction="row" justify="space-evenly" align="right" align_items="top" classes={["has-text-centered"]} >
              <NumberFlex id="ndl2" name="Count 2" value={bind(@count2)} />
              <NumberFlex id="ndl3" name="Cnt 2" value={bind(@count2)} />
              <NumberFlex id="ndl4" name="Count 2" value={bind(@count2)} />
              <NumberFlex id="ndl5" name="Count 3" value={bind(@count2)} />
              <NumberFlex id="ndl6" name="Count 44" value={bind(@count2)} />
              <NumberFlex id="ndl7" name="Count 44" value={bind(@count2)} />
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
              <Flexer direction="column" justify="left" align="right" classes={["px-2", "py-1"]}>
                <NumberButton id="ndl3.1" rounded="left" name="Count 1a" value={bind(@count2)} />
                <NumberButton id="ndl3.2" rounded="left" name="Cnt 2" value={bind(@count2)} />
                <NumberButton id="ndl3.3" rounded="left" name="Count 2a" value={bind(@count2)} />
              </Flexer>

              <Dropdown id="ndl3.4" text="Test Freq" value={bind(@count2)} />

            </p>
            <p>

            <LiveRedirect to="/getting_started">Learn more</LiveRedirect></p>
          </CardWithIcon>

        </Column>
        <Column width=4>
          <CardWithIcon icon="fa-book" title="Documentation">
            <p>
              The basic idea and motivation behind <b>Surface</b>, introducing the
              all the main features along with <strong>live examples</strong> and detailed explanation to
              help you to get started.
            </p>

            <Select id="sl1" items={["alpha", "beta", "gamma"]}>
            </Select>

            <NumberInput id="ni1" >
            </NumberInput>
          </CardWithIcon>
        </Column>
      </Columns>
    """
  end

  def handle_event(evt, data, socket) do
    Logger.warn("unknown event: #{inspect evt} => #{inspect data}")
    {:noreply, socket}
  end

end
