﻿$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$ver        = $env:ChocolateyPackageVersion
$url        = "https://downloads.remarkable.com/desktop/production/win/reMarkable-$ver-win32.exe"
$url64      = "https://downloads.remarkable.com/desktop/production/win/reMarkable-$ver-win32.exe"

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  softwareName  = 'remarkable*'

  checksum      = 'F66ACE9DED878A7A3F000C59A308FAFDCC2AC59AC92C4A6E32A2845EA20B6484'
  checksumType  = 'sha256'
  checksum64    = 'F66ACE9DED878A7A3F000C59A308FAFDCC2AC59AC92C4A6E32A2845EA20B6484'
  checksumType64= 'sha256'

  silentArgs    = "in --al --da --nf -c com.remarkable.xochitl"
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs