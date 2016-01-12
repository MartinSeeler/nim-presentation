# nimble install patty
import patty

# create and greet someone
type Person = object
  name: string
  age: int

proc greet(p: Person) =
  echo "Hi, I'm ", p.name, "."
  echo "I am ", p.age, " years old."

let p = Person(name:"John Doe", age:42)
p.greet() # or greet(p)

match p:
  Person(n, a):
    echo n, " is ", a, " years old"