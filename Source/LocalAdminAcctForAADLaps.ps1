New-LocalUser -Name "Tec" -Description "Account for AAD LAPS." -NoPassword
Add-LocalGroupMember -Group "Administrators" -Member "Tec"