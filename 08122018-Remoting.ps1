help about_Class -Examples

class vm
{
    $Name
[string] status()
    {
        return "stopped"
        }
}












=================
   PSRemotingip
Enter-PSSession
Invoke-Command

ipconfig
hostname

Enter-PSSession -ComputerName NTMS_PC8 -Credential $cred
Enable-PSRemoting -Verbose

$cred=Get-Credential
$cre
$comp=$env:COMPUTERNAME
help New-SelfSignedCertificate -Exam
New-SelfSignedCertificate -DnsName "$comp" -CertStoreLocation "Cert:\LocalMachine\My"
Get-PSProvider
cd wsman:
Get-ChildItem
cd localhost
dir
cd listener
Get-ChildItem listener_1084132640 ========= This is http listener creted by ps remoting
The below needs to be done for workgroup network
New-Item -Path WSMan:\localhost\Listener -Transport HTTPS -Address * -CertificateThumbPrint "53A7F035419EECA67FDBF164C3B910DACFA9BD26"  =============== Creating HTTPS Listener
cd localhost
cd client
ls
Get-Item WSMan:\localhost\Client\TrustedHosts
Set-Item WSMan:\localhost\Client\TrustedHosts -Value 192.168.1.27 -Concatenate=== To add ip in the trusted domain
Enter-PSSession -ComputerName NTMS_PC8 -UseSSL
$ps=New-PSSessionOption -SkipCACheck
Enter-PSSession -SessionOption $ps -ComputerName NTMS_PC8 -Credential $cred -UseSSL == To connect to remote computer
Once you are on remote system try following commands
Invoke-Command -ScriptBlock {hostname}
Invoke-Command -ScriptBlock {get-service}

PS Session
$crn=Get-Credential
$ses=New-PSSessionOption -SkipCACheck
New-PSSession -ComputerName NTMS_PC8 -Port 5986 -Credential $crn -UseSSL -SessionOption $ses
Get-PSSession -id 7 | Enter-PSSession
Invoke-Command -ScriptBlock {Get-Service -Name bits | select status}
$ser= "Bits","winrm"

$sess=New-PSSession -ComputerName NTMS_PC8 -Port 5986 -Credential $crn -UseSSL -SessionOption $ses
Invoke-Command -Session $sess -ArgumentList $ser -ScriptBlock {(get-service -name $args[0,1]).Status}
Invoke-Command -Session $sess -ArgumentList $ser -ScriptBlock {(get-service -name $using:ser)}
