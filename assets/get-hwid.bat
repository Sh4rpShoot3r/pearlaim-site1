@echo off
title PearlAim - Hardver-azonosito (HWID) lekerese
color 0B
echo.
echo  ==================================================
echo    PearlAim - Hardver-azonosito (HWID) lekerese
echo  ==================================================
echo.
echo  Ez a szkript SEMMIT nem kuld el automatikusan sehova.
echo  Csak kiszamolja es kiirja a kodot - a tobbit Neked
echo  kell elvegezned: masold ki, es kuldd el Discordon.
echo.
echo  Discord: @bence_szasz
echo.
echo  --------------------------------------------------
echo.

powershell -NoProfile -ExecutionPolicy Bypass -Command "$guid = (Get-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Cryptography' -Name MachineGuid).MachineGuid; $bytes = [System.Text.Encoding]::UTF8.GetBytes($guid); $hashBytes = [System.Security.Cryptography.SHA256]::Create().ComputeHash($bytes); $hwid = ($hashBytes | ForEach-Object { $_.ToString('x2') }) -join ''; Write-Host ''; Write-Host 'A hardver-azonositod (HWID):' -ForegroundColor White; Write-Host $hwid -ForegroundColor Cyan; try { Set-Clipboard -Value $hwid; Write-Host ''; Write-Host 'Vagolapra masolva - most mar csak be kell illesztened Discordon.' -ForegroundColor Green } catch { Write-Host ''; Write-Host 'Nem sikerult vagolapra masolni - masold ki kezzel a fenti kodot.' -ForegroundColor Yellow }"

echo.
echo  --------------------------------------------------
echo  Kuldd el a fenti kodot Discordon: @bence_szasz
echo  --------------------------------------------------
echo.
pause
