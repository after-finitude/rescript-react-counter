%%raw(`import './CounterButton.css';`)

@react.component
let make = (~title, ~onClick) => {
  <button className="CounterButton-button" onClick={onClick}> {React.string(title)} </button>
}
