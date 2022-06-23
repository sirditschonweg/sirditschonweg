# Abfrage der Chrome Version
# Invoke-Command -ComputerName desrvt0040 -Command {Get-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\chrome.exe'}

 
$SName =@("PC-Name1" , "PC-Name2" , "PC-Name3", "PC-Name4")

foreach ($SName in $SName)
{
Invoke-Command -ComputerName $SName -Command { 
    (Get-Item (Get-ItemProperty 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\chrome.exe').'(Default)').VersionInfo
                                              } | Select-Object -Property PSComputerName, ProductVersion  
}