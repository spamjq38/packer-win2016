Write-Host "Activating required Windows features..."
Install-WindowsFeature -Name "Web-Server" -IncludeManagementTools
Install-WindowsFeature -Name "Web-Asp-Net45" -IncludeManagementTools
Install-WindowsFeature -Name "Web-AppInit" -IncludeManagementTools
Install-WindowsFeature -Name "Web-IP-Security" -IncludeManagementTools
# Set-ItemProperty ‘HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server\‘ -Name “fDenyTSConnections” -Value 0
# Set-ItemProperty ‘HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp\‘ -Name “UserAuthentication” -Value 1
# Enable-NetFirewallRule -DisplayGroup “Remote Desktop”
# Add-LocalGroupMember -Group "Remote Desktop Users" -Member vagrant


