import macros

macro abcProc(n: expr): stmt  =  
  let body = newCall("echo", newStrLitNode($n)) 
  result = newProc(n, body=body)

abcProc(A)
abcProc(B)
abcProc(C)

proc execute(order: seq[int], callbacks: seq[proc]) =  
  for i in items(order):
    callbacks[i]()

execute(@[0,0,1,2,1,2], @[A, B, C]) 