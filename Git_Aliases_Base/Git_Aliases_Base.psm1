#!/usr/bin/env pwsh


function get-myGitStatus {
    <#
    .SYNOPSIS
    Call git status
    #>
    return git status
}
Set-Alias -Name "gitst" -Value get-myGitStatus -Description "A shorter git status, easier to type"
