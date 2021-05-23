%%raw(`import './Counter.css';`)

module Title = {
  @react.component
  let make = (~counter) => {
    <h1> {React.string("Counter: ")} {React.int(counter)} </h1>
  }
}

module Button = {
  @react.component
  let make = (~title, ~onClick) => {
    <button className="Counter-button" onClick={onClick}> {React.string(title)} </button>
  }
}

@react.component
let make = () => {
  let (counter, setCounter) = React.useState(() => 0)

  let inc = _ => setCounter(counter => counter + 1)
  let dec = _ => setCounter(counter => counter - 1)

  <div className="Counter-container">
    <Title counter />
    <div className="Counter-button-container">
      <Button title="+" onClick={inc} /> <Button title="-" onClick={dec} />
    </div>
  </div>
}
