module CounterStyles = {
  open Emotion.Css

  let container = css({
    "display": "flex",
    "alignItems": "center",
    "justifyContent": "center",
    "flexDirection": "column",
  })

  let buttonContainer = css({
    "display": "flex",
    "flexDirection": "row",
  })
}

@react.component
let make = () => {
  let (counter, setCounter) = React.useState(() => 0)

  let inc = _ => setCounter(counter => counter + 1)
  let dec = _ => setCounter(counter => counter - 1)

  <div className={CounterStyles.container}>
    <CounterTitle counter />
    <div className={CounterStyles.buttonContainer}>
      <CounterButton title="+" onClick={inc} /> <CounterButton title="-" onClick={dec} />
    </div>
  </div>
}
