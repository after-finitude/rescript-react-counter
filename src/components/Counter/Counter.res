module CounterStyles = {
  open Emotion.Css

  let componentContainer = css({
    "display": "flex",
    "alignItems": "center",
    "justifyContent": "center",
    "flexDirection": "column",
  })

  let buttonGroupContainer = css({
    "display": "flex",
    "flexDirection": "row",
  })
}

@react.component
let make = () => {
  let (counter, setCounter) = React.useState(() => 0)

  let inc = _ => setCounter(counter => counter + 1)
  let dec = _ => setCounter(counter => counter - 1)
  let reset = _ => setCounter(_ => 0)

  <div className={CounterStyles.componentContainer}>
    <CounterTitle counter />
    <CounterButtonGroup>
      <CounterButton title="+" onClick={inc} />
      <CounterButton title="-" onClick={dec} />
      <CounterButton title="Reset" onClick={reset} />
    </CounterButtonGroup>
  </div>
}
