function get-nytest
{

Get-Process 
write-host "The Genius"
}
get-nytest


function get-test2
{

    Get-Service | where {$_.Status -eq "Running"}
    Write-Host "I am running"
    }


function get-serverdetails ($compname)
{
 Write-Host "This is your input $compname"
 }
 get-serverdetails NTMS

 function get-serverdetails ($compname,$service)
{
 Write-Host "This is your input $compname"
 Write-Host "This is your service $service"
 }
 get-serverdetails NTMS Bits


++++++++++++++++++++++++++++++++++ 

 function get-osdetails
 {
 Param ($compname, $servicename)
 $compname , $servicename
 
 }

 get-osdetails -compname localhost -servicename

 ++++++++++++++++++++++++++++


 function get-osdetail
 {
 Param ($compname, $servicename)
 
 $os = Get-WmiObject -ComputerName $compname -Class win32_operatingsystem

 $os
 
 }

 
 get-osdetail -compname



 =======Advance Function==========
 
 function get-osd
 {[cmdletbinding()]
param(
[Parameter(mandatory = $true, HelpMessage = "Give computer name")] 
 $compnamee

  )
$ost = get-wmi
 }
 get-osd

 =============

 
  function get-osd
 {[cmdletbinding()]
param(
[Parameter(mandatory = $true, HelpMessage = "Give computer name")] 
 $compnamee

  )
$ost = get-wmi
 }
 get-osd

 ========Begin Prcoess and End===========


  function get-servicedisplayname
 {

Begin{write-host "This is my begin block"}

Process{write-host "$($_.displayname)"}

End{write-host "This is my end block"} 
} 
 
 get-service| get-servicedisplayname

 =======================

 function get-servicedisplayname
 {

Begin{}

Process{write-host "$($_.displayname)"}

End{}
} 
 
 get-service| get-servicedisplayname

 =================================

 function get-servicedetails
 {
 [cmdletbinding()]
param([Parameter(mandatory = $true,ValueFromPipeline =$true)]
[int]$name1)

Begin{}

Process{write-host "$($_.displayname)"}

End{}
} 
 
 get-process |get-servicedetails



 ==========================


 function get-servicedetails
 {
 [cmdletbinding()]
param([Parameter(mandatory = $true,ValueFromPipelineByPropertyName =$true)]
[int]$id)

Begin{}

Process{write-host "$($_.id)"}

End{}
} 
 
 get-process |get-servicedetails

 =============================================

 get-help about_Functions_Advanced_Parameters -ShowWindow

 function get-servicedetails
 {
 [cmdletbinding()]
param([Parameter (ValueFromPipelineByPropertyName =$true)]
[ValidateNotNullOrEmpty]
$id)

Begin{}

Process{write-host "$($_.id)"}

End{}
} 
 
 get-process |get-servicedetails

 get-servicedetails -id 
 Get-Process

 ================================
 
 function get-servicedetails
 {
 [cmdletbinding()]
param([Parameter (ValueFromPipelineByPropertyName =$true)]
[ValidateSet ('123','345')]
[int]$id)

Begin{}

Process{write-host "$($_.id)"}

End{}
} 
 
 get-process |get-servicedetails

 get-servicedetails -id 12
==============================================
$Error.Clear()
get-anish
$Error
get-sufiyan
$Error
$Error[0]
$Error[0] | gm
$Error[0].Exception
$Error[0].FullyQualifiedErrorId
$ErrorActionPreference

$ErrorActionPreference = "silentlycontinue"
get-anish
Get-Service 


$ErrorActionPreference ="Inquire"
get-anish
Get-Service 

$ErrorActionPreference ="Ignore"

get-anish2 -e
Get-Service 

get-anish2 -Erroraction Ignore
Test-Connection -ComputerName 1234 -ErrorAction Ignore
$Error[0]

=====

Try
{ Test-Connection -ComputerName 78999}
 catch 
 {Write-Host "Connection timed out"
 $_.category.reason

 }
