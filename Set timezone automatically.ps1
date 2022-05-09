Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\tzautoupdate" -Name "Start" -Value 3
Set-itemproperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location\" -name "value" -Value Allow
w32tm /config /manualpeerlist:time.windows.com /syncfromflags:manual /reliable:yes /update
w32tm /resync /force