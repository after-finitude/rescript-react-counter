module Css = {
  @module("@emotion/css")
  external css: {..} => string = "css"

  @module("@emotion/css")
  external injectGlobal: string => unit = "injectGlobal"
}
