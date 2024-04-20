import winreg

def disable_proxy():
    key_path = r"Software\Microsoft\Windows\CurrentVersion\Internet Settings"
    key = winreg.OpenKey(winreg.HKEY_CURRENT_USER, key_path, 0, winreg.KEY_SET_VALUE)

    winreg.SetValueEx(key, "ProxyEnable", 0, winreg.REG_DWORD, 0)
    winreg.SetValueEx(key, "ProxyServer", 0, winreg.REG_SZ, "")

    winreg.CloseKey(key)

disable_proxy()
