template square(x: int): int =
  # ensure 'x' is only evaluated once:
  let y = x
  y * y

echo 3.square()