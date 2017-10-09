#Disable automatic proxy settings
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v AutoDetect /t REG_DWORD /d 0 /f

#Enable proxy settings
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Internet Explorer\Control Panel" /f /v "Autoconfig" /t REG_DWORD /d "0"
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Internet Explorer\Control Panel" /f /v "Proxy" /t REG_DWORD /d "0"

#Set proxy
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings" /f /v "ProxyEnable" /t REG_DWORD /d "1"
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings" /f /v "ProxyServer" /t REG_SZ /d "<hostname>:<port>"
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings" /f /v "ProxyOverride" /t REG_SZ /d "<proxy bypass>;<local>"
