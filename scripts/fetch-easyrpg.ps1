param(
    [string]$PlayerRepo = "https://github.com/EasyRPG/Player.git",
    [string]$LiblcfRepo = "https://github.com/EasyRPG/liblcf.git"
)

$ErrorActionPreference = "Stop"

$root = Resolve-Path (Join-Path $PSScriptRoot "..")
$thirdParty = Join-Path $root "third_party"
New-Item -ItemType Directory -Force -Path $thirdParty | Out-Null

function Clone-Or-Fetch([string]$Url, [string]$Name) {
    $target = Join-Path $thirdParty $Name
    if (Test-Path -LiteralPath (Join-Path $target ".git")) {
        git -C $target fetch --tags --prune
        if ($LASTEXITCODE -ne 0) { throw "git fetch failed for $Name" }
        return
    }
    git clone $Url $target
    if ($LASTEXITCODE -ne 0) { throw "git clone failed for $Name" }
}

Clone-Or-Fetch $PlayerRepo "Player"
Clone-Or-Fetch $LiblcfRepo "liblcf"

Write-Host "EasyRPG sources are available under $thirdParty"
