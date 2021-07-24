import winim

var processArray: seq[DWORD]
var processArrayLen = 0
var byteSize: DWORD = 0

var results = EnumProcesses(
  addr processArray[0],
  DWORD( processArrayLen * sizeof(DWORD) ),
  addr byteSize
  )

var numPIDs = int(int(byteSize)/sizeof(DWORD));

for i in 0..<numPIDs:
  echo processArray[i]
