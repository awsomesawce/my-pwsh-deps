#!/usr/bin/env pwsh
<#
.SYNOPSIS
Git aliases and utilities
.Description
Personal powershell module implementing various git shortcuts and utilities
.NOTE
Look at ./optional.ps1 for alternative way of implementing these functions.
#>
param()

function get-myGitStatus {
    <#
    .SYNOPSIS
    Call git status
    #>
    return git status
}
Set-Alias -Name "gitst" -Value get-myGitStatus -Description "A shorter git status, easier to type"

Export-ModuleMember -Function @("get-myGitStatus") -Alias @("gitst")
