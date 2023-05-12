$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://downloads.remarkable.com/desktop/production/win/reMarkable-3.1.1.722-win32.exe'
$url64      = 'https://downloads.remarkable.com/desktop/production/win/reMarkable-3.1.1.722-win32.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  softwareName  = 'remarkable*'

  checksum      = '4B5117CAB7FC92551BB0D420A3AC19F379AA4CF469E182A1A46EB23D2F3D974C'
  checksumType  = 'sha256'
  checksum64    = '4B5117CAB7FC92551BB0D420A3AC19F379AA4CF469E182A1A46EB23D2F3D974C'
  checksumType64= 'sha256'

  silentArgs    = "in --al --da --nf -c com.remarkable.xochitl"
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs