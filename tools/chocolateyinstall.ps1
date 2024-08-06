$ErrorActionPreference = 'Stop'

$ver        = $env:ChocolateyPackageVersion
$url        = "https://downloads.remarkable.com/desktop/production/win/reMarkable-$ver-win64-dOsiFEdigq.exe"

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'exe'
  url           = $url

  softwareName  = 'remarkable*'

  checksum      = '36569B14326C64D6A057D0E4D157111E9FBEB41A351509AE104EA887E56C8738'
  checksumType  = 'sha256'

  silentArgs    = "--al --da --nf -c in com.remarkable.xochitl"
  validExitCodes= @(0, 3010, 1641)
}
Remove-Item "C:\Program Files\reMarkable" -Force -Recurse
Install-ChocolateyPackage @packageArgs