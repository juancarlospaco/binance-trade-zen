import std/dom


proc main(_: Event) =
  # Hide body scrollbars.
  document.body.style.overflow = "hidden"

  # This is the form for trading.
  let orderform = document.querySelector"div[name='orderform']".style
  orderform.border   = "0"
  orderform.margin   = "0"
  orderform.padding  = "0"
  orderform.z_index  = "9999"
  orderform.width    = "100%"
  orderform.height   = "100%"
  orderform.position = "absolute"

  # Make the Buy button bigger.
  let buyButton = document.querySelector"button#orderformBuyBtn".style
  buyButton.height    = "9rem"
  buyButton.font_size = "3rem"

  # Make the Sell button bigger.
  let sellButton = document.querySelector"button#orderformSellBtn".style
  sellButton.height    = "9rem"
  sellButton.font_size = "3rem"


when isMainModule:
  window.addEventListener("load", main)
