%%raw(`import './CounterButton.css';`)

@react.component
let make = (~title: option<string>=?, ~onClick) => {
  let text = switch title {
  | Some(title) => React.string(title)
  | None => React.string("Button")
  }

  <button className="CounterButton-button" onClick={onClick}> text </button>
}
