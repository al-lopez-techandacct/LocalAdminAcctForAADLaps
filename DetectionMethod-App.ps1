#$user = "$env:COMPUTERNAME\$env:USERNAME"
$user = "$env:COMPUTERNAME\tec"
$group = 'Administrators'
  
    $isInGroup = (Get-LocalGroupMember $group).Name -contains $user
    if ($isInGroup){
        Write-Host "User is in local admin group"
        exit 0
    }
    else{
        exit 1
    }    

