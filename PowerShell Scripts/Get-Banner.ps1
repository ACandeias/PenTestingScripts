#requires -version 2.0
param(
    [parameter(mandatory=$true,position=0,helpmessage="Hostname or IP")]
  [string]$hostname
)

if (test-connection $hostname) {
    $conn = new-object system.net.sockets.tcpclient($hostname,21)
    $str = $conn.getstream()
    $buff = new-object system.byte[] 1024
    $enc = new-object System.Text.ASCIIEncoding
    start-sleep -m 200
    $output = ""
    while ($str.DataAvailable -and $output -notmatch "username") {
        $read = $str.read($buff,0,1024)
        $output += $enc.getstring($buff, 0, $read)
        start-sleep -m 300
    }
    $conn.close()
    $output
} else {
    Write-Error "Unable to ping or resolve host"
    exit 1
}