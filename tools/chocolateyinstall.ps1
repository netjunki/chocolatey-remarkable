$ErrorActionPreference = 'Stop'

$ver        = $env:ChocolateyPackageVersion
$url        = "https://downloads.remarkable.com/desktop/production/win/reMarkable-$ver-win32.exe"

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'exe'
  url           = $url

  softwareName  = 'remarkable*'

  checksum      = '4B5117CAB7FC92551BB0D420A3AC19F379AA4CF469E182A1A46EB23D2F3D974C'
  checksumType  = 'sha256'

  silentArgs    = "in --al --da --nf -c com.remarkable.xochitl"
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs