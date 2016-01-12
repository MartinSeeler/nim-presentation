# ref int is a traced pointer, ready for gc
proc f(x: ptr int not nil) = discard

var x: int = 5
let p = addr x
#if p != nil:
f(p)
#else:
#  echo "no no no!"