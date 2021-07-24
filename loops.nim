echo "Whats your name? "
var name = readLine(stdin)

while name == "":
  echo "Please tell me your name: "
  name = readLine(stdin)

echo "counting to 10"
for i in countup(1, 10):
  echo i

var s = "some string"
echo "string len: ", s.len
for i in 0 ..< s.len:
  echo s[i]
  
