import json, asyncdispatch, jester, sequtils, marshal, strutils, future

type 
  Todo = object
    id: int
    done: bool
    text: string

var id: int = 0
var todos: seq[Todo] = @[]

proc newTodo(id: int): Todo = 
  result.id = id
  result.done = false
  result.text = ""

settings:
  port = Port(5000)
  appName = "/todos"
  bindAddr = "127.0.0.1"

routes:
  get "/":
    resp(Http200, $$todos, "application/json")
  get "/@id":
    #let todo = todos.filter(proc(x: Todo): bool = x.id == parseInt(@"id"))
    let todo = todos.filter((todo: Todo) => todo.id == parseInt(@"id"))
    if (todo.len > 0):
      resp(Http200, $$(todo[0]), "application/json")
    else:
      resp(Http404, "", "application/json")
  put "/@id":
    let todo = newTodo(parseInt(@"id"))
    todos.add(todo)
    resp(Http201, $$todo, "application/json")
    
runForever()