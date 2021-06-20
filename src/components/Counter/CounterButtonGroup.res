module CounterButtonGroupStyles = {
  open Emotion.Css

  let buttonGroupContainer = css({
    "display": "flex",
    "flexDirection": "row",
  })
}

@react.component
let make = (~children: React.element) => {
  <div className={CounterButtonGroupStyles.buttonGroupContainer}> children </div>
}
