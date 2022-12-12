$port = New-Object System.IO.Ports.SerialPort
$port.PortName = "COM4"
$port.BaudRate = "9600"
$port.Parity = "None"
$port.DataBits = 8
$port.StopBits = 1
$port.ReadTimeout = 9000 # 9 seconds
$port.DtrEnable = "true"

$port.Open()
    do {
        $line = $port.ReadLine()
        Write-Host $line # Do stuff here

        $Temp = $line.Substring(9,7)

        if ($Temp -lt 70) {Write-Host "I'm Cold"}
        elseif ($line -gt 72) {Write-Host "I'm hot!"}
        else {Write-Host "Temp is OK"}

    }
    while ($port.IsOpen)
