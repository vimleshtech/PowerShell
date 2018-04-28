
$userfile = "C:\Users\vkumar15\Desktop\test\data.txt"

if(! (Test-Path $userfile)){
 Write-Warning "file not exit"
}
else
{

    Write-Warning "file exit"
}

# . : current folder 

#### backup of files or folder
$srcfile = "C:\Users\vkumar15\Desktop\test\data.txt"
$dest = "C:\Users\vkumar15\Desktop\test2\"



if(  (Test-Path $srcfile) -and  (Test-Path $dest)    ){

    copy-item -path $srcfile  -destination $dest     
        
}
else
{

    Write-Warning "src or dest doesn't exit"
}



#####
#### backup of files or folder
$srcfile = "C:\Users\vkumar15\Desktop\test\data.txt"
$dest = "C:\Users\vkumar15\Desktop\test2\newfile.txt"


if(  (Test-Path $srcfile) -and  (Test-Path $dest)    ){

    copy-item -path $srcfile  -destination $dest     
        
}
else
{

    Write-Warning "src or dest doesn't exit"
}x



#### backup of files or folder
$srcfile = "C:\Users\vkumar15\Desktop\test\data.txt"

$d  = Get-Date

$dest = "C:\Users\vkumar15\Desktop\test2\abcd_$d.txt"


if(  (Test-Path $srcfile) -and  (Test-Path $dest)    ){

    copy-item -path $srcfile  -destination $dest     
        
}
else
{

    Write-Warning "src or dest doesn't exit"
}


## copy all files or folder 
copy-item -path c:test -destination  c:usersrusselldesktoptest –recurse


copy-item -path c:test –filter *.docx -destination c:usersrusselldesktoptest –recurse
copy-item -path c:test –filter data.* -destination c:usersrusselldesktoptest –recurse
 vvv



#Variables
$computername = Get-Content 'C:\Users\vkumar15\Desktop\test\computer.txt'
$sourcefile = "\\server\Apps\LanSchool 7.7\Windows\Student.msi"

#This section will install the software 
foreach ($computer in $computername) 
{
    $destinationFolder = "\\$computer\C$\download\LanSchool"
    #This section will copy the $sourcefile to the 
    if (!(Test-Path -path $destinationFolder))
    {
        New-Item $destinationFolder -Type Directory
    }

     Copy-Item -Path $sourcefile -Destination 
    #$destinationFolder 
     #$id = shjhassgh
     #LogonUI.exe -ComputerName $computer  -uname $id -passwd 
     
     Invoke-Command -ComputerName $computer -ScriptBlock { & cmd /c "msiexec.exe /i c:\download\LanSchool\Student.msi" /qn ADVANCED_OPTIONS=1 CHANNEL=100}
     # Start-Process -ComputerName $computer ..msi 
    
    }



    Invoke-Command -ComputerName $Computer
        {
            iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
            choco install crystaldiskinfo -y
        }
      
      
Restart-Computer -ComputerName "Server01" -Impersonation Anonymous -Authentication PacketIntegrity

Stop-Computer -ComputerName "Server01", "Server02", "localhost"


#user
$DomainName = Read-Host "Domain name:"
$ComputerName = Read-Host "Computer name:"
$UserName = Read-Host "User name:"

$AdminGroup = [ADSI]"WinNT://
$ComputerName /Administrators,group"

$User = [ADSI]"WinNT://$DomainName/$UserName,user"

$AdminGroup.Add($User.Path)


####
$AdminGroup = "groupnae"
$AdminGroup.Add("abcd")




Write-Host "hi"
Write-Host "hi"


$a ="hi this is"
$d = $a.Split(" ")

foreach($aa in $d){

    Write-Host $aa 
}


