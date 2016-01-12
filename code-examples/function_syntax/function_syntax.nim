# var means pass by reference
proc `++`(x: var int, y: int = 1, z: int = 0) = 
  x = x + y + z

var g = 70
++g               # `++`(g)
g ++ 7            # `++`(g, 7)
g.`++`(10, 20)    # `++`(g, 10, 20)

echo g

proc onlyIntOrString[T: int|string](x, y: T) = discard

onlyIntOrString(450, 616) # valid
#onlyIntOrString(5.0, 0.0) # type mismatch
#onlyIntOrString("xy", 50) # invalid as 'T' cannot be both at the same time