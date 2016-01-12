import jester, asyncdispatch, asyncnet, htmlgen

routes:
  get "/ping":
    resp "pong"

runForever()