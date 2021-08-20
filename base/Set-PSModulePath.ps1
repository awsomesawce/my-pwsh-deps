#!/usr/bin/env pwsh
# Set PSModulePath in cross-platform-like fashion.

<#
.Synopsis
Set-PSModulePath [path]
.Description
Adjust the PSModulePath env variable to your liking
.PARAMETER Path
The path string you want to add to PSModulePath
.PARAMETER ExportVars
Choose to export global variables that may be useful in other scripts.
.Notes
Add integration with other modules so they can add their own dir
to the psmodulepath!
#>
param(
    [parameter(Mandatory = $false)]
    [string]
    $Path,
    [parameter(Mandatory = $false)]
    [switch]
    $ExportVars
)
$sep = [System.IO.Path]::PathSeparator # sep represents either `;` or `:` depending on 
# which system you are on.
if ($Path) {
    Write-Host -ForegroundColor Yellow "Adjusting PSModulePath
Adding $Path to `$env:PSModulePath"
    Write-Verbose "Setting old path to `$oldPSModulePath"
    if ($ExportVars) {
        $Global:oldPSModulePath = $env:PSModulePath
        $Global:PSModPathSplit = $env:PSModulePath.Split($sep)
    }
    # Test if $Path already in PSModulePath.
    # Test against PSModPathSplit array instead of $env:PSModulePath string.
    if ($Path -in $env:PSModulePath.Split($sep)) {throw "$Path already in `$env:PSModulePath"}
    $env:PSModulePath = "${Path}${sep}$env:PSModulePath"
    Write-Host -fore Yellow "`$env:PSModulePath is now $env:PSModulePath"
}
else {
    Write-Error "You did not write a Path"
}

