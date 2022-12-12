$port = New-Object System.IO.Ports.SerialPort
$port.PortName = "COM4"
$port.BaudRate = "9600"
$port.Parity = "None"
$port.DataBits = 8
$port.StopBits = 1
$port.ReadTimeout = 9000 # 9 seconds
$port.DtrEnable = "true"

$port