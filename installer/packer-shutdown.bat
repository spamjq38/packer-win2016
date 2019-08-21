call winrm set winrm/config/service/auth @{Basic="false"}
call winrm set winrm/config/service @{AllowUnencrypted="false"}
rem netsh advfirewall firewall set rule name="WinRM-HTTP" new action=block
C:/windows/system32/sysprep/sysprep.exe /generalize /oobe /unattend:A:/postinstall.xml /quiet
cd /
shutdown /s

rem "shutdown_command": "C:\\Windows\\system32\\sysprep\\sysprep.exe /unattend:A:\\postinstall.xml /quiet /generalize /oobe /shutdown"