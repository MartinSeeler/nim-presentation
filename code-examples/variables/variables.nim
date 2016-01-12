proc getAlphabet(): string =
  result = ""
  for letter in 'a'..'z': result.add(letter)

var x          = 1               # int
var n: uint8   = 1               # int
let y          = "hello"         # string
const z        = getAlphabet()   # string

echo x
echo n
echo y
echo(addr(x))
echo z
