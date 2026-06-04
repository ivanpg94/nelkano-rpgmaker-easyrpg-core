param(
    [string]$Abi = "arm64-v8a"
)

$ErrorActionPreference = "Stop"

$root = Resolve-Path (Join-Path $PSScriptRoot "..")
$player = Join-Path $root "third_party\Player"

if (-not (Test-Path -LiteralPath $player)) {
    throw "EasyRPG Player sources not found. Run scripts\fetch-easyrpg.ps1 first."
}

Write-Host "TODO: configure Android build for EasyRPG core ($Abi)."
Write-Host "Do not publish an APK/AAR bundle before updating LEGAL-NOTICE.txt and SOURCE-OFFER.txt with the exact source/build correspondence."
