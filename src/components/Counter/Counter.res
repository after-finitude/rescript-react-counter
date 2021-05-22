%%raw(`import './Counter.css';`)

module Title = {
  @react.component
  let make = (~counter) => {
    <h1> {React.string("Counter: ")} {React.int(counter)} </h1>
  }
}

module ButtonGroup = {
  @react.component
  let make = (~inc, ~dec) => {
    <div className="Counter-button-container">
      <button className="Counter-button" onClick={inc}> {React.string("+")} </button>
      <button className="Counter-button" onClick={dec}> {React.string("-")} </button>
    </div>
  }
}

@react.component
let make = () => {
  let (counter, setCounter) = React.useState(() => 0)

  let inc = _ => setCounter(counter => counter + 1)
  let dec = _ => setCounter(counter => counter - 1)

  <div className="Counter-container"> <Title counter /> <ButtonGroup inc dec /> </div>
}
