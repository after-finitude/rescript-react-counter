%%raw(`import './Counter.css';`)

@react.component
let make = () => {
  let (counter, setCounter) = React.useState(() => 0)

  let inc = _ => setCounter(counter => counter + 1)
  let dec = _ => setCounter(counter => counter - 1)

  <div className="Counter-container">
    <CounterTitle counter />
    <div className="Counter-button-container">
      <CounterButton title="+" onClick={inc} /> <CounterButton title="-" onClick={dec} />
    </div>
  </div>
}
