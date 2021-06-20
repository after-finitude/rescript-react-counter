@react.component
let make = (~counter: int) => {
  <h1> {"Counter: "->React.string} {counter->React.int} </h1>
}
