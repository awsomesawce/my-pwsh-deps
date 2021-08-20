function Set-PSModulePath {

<#
.Synopsis
Set-PSModulePath [path]
.Description
Adjust the PSModulePath env variable to your liking
.Notes
Add integration with other modules so they can add their own dir
to the psmodulepath!
#>
param(
    [parameter(Mandatory = $false)]
    [string]
    $Path
)
$sep = [System.IO.Path]::PathSeparator
if ($Path) {
    Write-Host -ForegroundColor Yellow "Adjusting PSModulePath
Adding $Path to `$env:PSModulePath"
    Write-Verbose "Setting old path to `$oldPSModulePath"
    $oldPSModulePath = $env:PSModulePath
    $env:PSModulePath = "${Path}${sep}$env:PSModulePath"
    Write-Host -fore Yellow "`$env:PSModulePath is now $env:PSModulePath"
}
else {
    Write-Error "You did not write a Path"
}

}
