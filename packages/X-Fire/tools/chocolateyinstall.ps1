# Apply this snippet for unpacking portable programs into 7z and zip files.
$ErrorActionPreference = 'Stop';

# Insert here full correct name of program, not Chocolatey package name. For example, correct «Performance Maintainer», not «pername».
$packageName = 'X-Fire'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
# Don't forget specify protocol for URL's!
$url         = 'https://github.com/Kristinita/SashaChocolatey/raw/master/installation-files/X-Fire/LightSashaFire.CursorPack'
$url64       = ''

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir

  url           = $url
  url64bit      = $url64

  checksum        = '6C83251DFA0FEB664EE8DC0C340E9383C177C7D12CB367A994311C936F233EEA'
  checksumType    = 'sha256'
  checksum64      = ''
  checksumType64  = 'sha256'

}

Install-ChocolateyZipPackage @packageArgs