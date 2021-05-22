%%raw(`import './Counter.css';`)

@react.component
let make = () => {
  let (counter, setCounter) = React.useState(() => 0)

  <div className="Counter-container">
    <h1> {React.string("Counter: ")} {React.int(counter)} </h1>
    <div className="Counter-button-container">
      <button className="Counter-button" onClick={_ => setCounter(counter => counter + 1)}>
        {React.string("+")}
      </button>
      <button className="Counter-button" onClick={_ => setCounter(counter => counter - 1)}>
        {React.string("-")}
      </button>
    </div>
  </div>
}
