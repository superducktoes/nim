proc yes(question: string): bool =
  echo question, " (y/n)"
  while true:
    case readLine(stdin)
    of "y": return true
    of "n": return false
    else: echo "Please enter y or n"


proc sumTillNegative(x: varargs[int]): int =
  for i in x:
    if i < 0:
      return
    result = result + i
    
if yes("Should I delete all important files?"):
  echo "sorry, cant do that"
else:
  echo "i think theres a problem"

echo sumTillNegative()
echo sumTillNegative(3, 4, 5)
echo sumTillNegative(3, 4, -1, 6)
