$ErrorActionPreference = 'Stop'

$ver        = $env:ChocolateyPackageVersion
$url        = "https://downloads.remarkable.com/desktop/production/win/reMarkable-$ver-win32.exe"

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'exe'
  url           = $url

  softwareName  = 'remarkable*'

  checksum      = 'F66ACE9DED878A7A3F000C59A308FAFDCC2AC59AC92C4A6E32A2845EA20B6484'
  checksumType  = 'sha256'

  silentArgs    = "in --al --da --nf -c com.remarkable.xochitl"
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs