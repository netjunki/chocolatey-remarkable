$ErrorActionPreference = 'Stop'

$ver        = $env:ChocolateyPackageVersion
$url        = "https://downloads.remarkable.com/desktop/production/win/reMarkable-$ver-win64.exe"

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'exe'
  url           = $url

  softwareName  = 'remarkable*'

  checksum      = '62887C8F66CEA74CE6723B4796BF77493DD7FF568AFF5698080F119A153B1D25'
  checksumType  = 'sha256'

  silentArgs    = "--al --da --nf -c in com.remarkable.xochitl"
  validExitCodes= @(0, 3010, 1641)
}
Remove-Item "C:\Program Files\reMarkable" -Force -Recurse
Install-ChocolateyPackage @packageArgs