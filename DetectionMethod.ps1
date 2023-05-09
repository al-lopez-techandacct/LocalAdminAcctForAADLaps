#$user = "$env:COMPUTERNAME\$env:USERNAME"
$user = "$env:COMPUTERNAME\alopez"
$group = 'Administrators'
$isInGroup = (Get-LocalGroupMember $group).Name -contains $user