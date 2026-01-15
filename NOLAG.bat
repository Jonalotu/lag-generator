@echo off
timeout /t 1 /nobreak >nul

powershell -Command "Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.SendKeys]::SendWait('{F4}t'); Sleep 1000; [System.Windows.Forms.SendKeys]::SendWait('{ENTER}'); Sleep 1000; [System.Windows.Forms.SendKeys]::SendWait('manual'); Sleep 1000; [System.Windows.Forms.SendKeys]::SendWait('0'); Sleep 1000; [System.Windows.Forms.SendKeys]::SendWait('{ENTER}');"

start /wait powershell -Command "$i = 1; while($true){$i++; $n = $i * $i; $j = $n * 1000; Write-Host $j}"

exit
