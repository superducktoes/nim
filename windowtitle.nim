import winim
import strformat
import os

var a = 1
while a == 1:
  sleep(4000)
  var rnMaxCount: int32 = 256
  var rlpString: LPWSTR = newString(rnMaxCount)
  var foregroundWindow = GetForegroundWindow()

  var rGetWindowTextA = GetWindowText(
    foregroundWindow,
    rlpString,
    rnMaxCount
  )
  
  echo $(rlpString)
