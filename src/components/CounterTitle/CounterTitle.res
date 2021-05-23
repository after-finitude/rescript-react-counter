@react.component
let make = (~counter) => {
  <h1> {React.string("Counter: ")} {React.int(counter)} </h1>
}
