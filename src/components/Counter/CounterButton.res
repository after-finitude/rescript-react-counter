module CounterButtonStyles = {
  open Emotion.Css

  let button = css({
    "width": "50px",
    "height": "50px",
    "marginRight": "10px",
    "&:last-child": {
      "marginRight": "0px",
    },
  })
}

@react.component
let make = (~title: option<string>=?, ~onClick: option<ReactEvent.Mouse.t => unit>=?) => {
  let title = switch title {
  | Some(title) => title->React.string
  | None => "Button"->React.string
  }

  let onClick = switch onClick {
  | Some(onClick) => onClick
  | None => _ => ()
  }

  <button className={CounterButtonStyles.button} onClick> title </button>
}
