#$user = "$env:COMPUTERNAME\$env:USERNAME"
$user = "$env:COMPUTERNAME\alopez"
$group = 'Administrators'



try
{   
    $isInGroup = (Get-LocalGroupMember $group).Name -contains $user
    if (!($isInGroup)){
        #Below necessary for Intune as of 10/2019 will only remediate Exit Code 1
        Write-Host "User not in local admin group"
        Return $results.count
        exit 1
    }
    else{
        Write-Host "User in local admin group"
        exit 0
    }    
}
catch{
    $errMsg = $_.Exception.Message
    Write-Error $errMsg
    exit 1
}