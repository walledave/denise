# Denises Wunschliste - Git einrichten und auf GitHub pushen.
# Ausfuehren in PowerShell:  cd C:\Users\dwall\Documents\Projects\Denise ;  .\setup.ps1

$ErrorActionPreference = "Stop"
Set-Location -LiteralPath $PSScriptRoot

if (Test-Path .git) {
  Write-Host "Es gibt hier schon ein .git - Abbruch." -ForegroundColor Yellow
  exit 1
}

git init -b main
git add -A
git commit -m "Denises Wunschliste - Start auf Basis von walledave/david"
git remote add origin https://github.com/walledave/denise.git
git push -u origin main

Write-Host ""
Write-Host "Fertig. Jetzt auf github.com/walledave/denise unter" -ForegroundColor Green
Write-Host "Settings -> Pages die Quelle auf Branch 'main' / '(root)' stellen." -ForegroundColor Green
