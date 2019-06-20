$public = @(
    'Copy-LastCommand'
    'Get-CommandInfo'
    'Get-CommandSource'
    'Get-ParameterInfo'
    'Get-Secure'
    'Get-Syntax'
    'Install-ProfileScript'
    'Open-Module'
    'prompt'
    'Restart-Console'
    'Set-Secure'
    'Start-ElevatedConsole'
    'Update-WindowTitle'
)

foreach ($file in $public) {
    . ("{0}\public\{1}.ps1" -f $psscriptroot, $file)
}

$functionsToExport = @(
    'Copy-LastCommand'
    'Get-CommandInfo'
    'Get-CommandSource'
    'Get-ParameterInfo'
    'Get-Secure'
    'Get-Syntax'
    'Install-ProfileScript'
    'Open-Module'
    'Restart-Console'
    'Set-Secure'
    'Start-ElevatedConsole'
    'Update-WindowTitle'
)
Export-ModuleMember -Function $functionsToExport


