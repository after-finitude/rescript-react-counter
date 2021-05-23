module CounterButtonStyles = {
  open Emotion.Css

  let button = css({
    "width": "50px",
    "height": "50px",
    "marginRight": "10px",
  })
}

@react.component
let make = (~title: option<string>=?, ~onClick) => {
  let title = switch title {
  | Some(title) => React.string(title)
  | None => React.string("Button")
  }

  <button className={CounterButtonStyles.button} onClick={onClick}> title </button>
}
