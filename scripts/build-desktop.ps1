param(
    [string]$Configuration = "Release"
)

$ErrorActionPreference = "Stop"

$root = Resolve-Path (Join-Path $PSScriptRoot "..")
$player = Join-Path $root "third_party\Player"
$build = Join-Path $root "build\desktop"
$dist = Join-Path $root "dist\desktop"

if (-not (Test-Path -LiteralPath $player)) {
    throw "EasyRPG Player sources not found. Run scripts\fetch-easyrpg.ps1 first."
}

New-Item -ItemType Directory -Force -Path $build | Out-Null
New-Item -ItemType Directory -Force -Path $dist | Out-Null

Write-Host "TODO: configure EasyRPG Player desktop build."
Write-Host "Source: $player"
Write-Host "Build:  $build"
Write-Host "Dist:   $dist"
Write-Host "The first implementation should produce a runtime executable launched by Nelkano main as a separate process."
