iterator countTo(n: int): int =
  var i = 0
  while i <= n:
    yield i
    inc i

for i in countTo(10):
  echo i

for x in 1..10:
  echo x

for y in 1||10:
  echo y