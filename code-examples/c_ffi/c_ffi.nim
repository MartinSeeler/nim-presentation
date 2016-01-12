# declare a C procedure..
proc unsafeScanf(f: File, s: cstring)
  {.varargs, importc: "fscanf", header: "<stdio.h>".}

# ..and use it...
var x: cint
var y: cint
stdin.unsafeScanf("%d %o", addr x, addr y)

echo x
echo y