##########################
Get-ChildItem  C:\     
Get-ChildItem -Force C:\  
##########################
Get-ChildItem -Force C:\ -Recurse
##########################

##########################
Copy-Item -Path c:\abc.txt -Destination c:\bcd\b.txt

##########################
Copy-Item -Path c:\boot.ini -Destination c:\boot.bak -Force

####################
Copy-Item C:\temp\test1 -Recurse c:\temp\DeleteMe

############
Copy-Item -Filter *.txt -Path c:\data -Recurse -Destination c:\temp\text
Copy-Item -Filter abcd.* -Path c:\data -Recurse -Destination c:\temp\text



########################


##########################
New-Item -Path 'C:\temp\New Folder' -ItemType "directory"

##########################
New-Item -Path 'C:\temp\New Folder\file.txt' -ItemType "file"

#######################
Remove-Item C:\temp\DeleteMe

########################
Remove-Item C:\temp\DeleteMe -Recurse

#################
(Get-Content -Path C:\a.txt).Length # return no. of rows from file 

### split path 
Split-Path -Path 'c:\users\kevin.marquette\documents' 
        #documents 


##############
Split-Path -Path 'c:\users\kevin.marquette\documents' -Leaf
    #c:\users\kevin.marquette


### join path 
Join-Path -Path $env:temp -ChildPath testing


### resolve path 
Resolve-Path -Path 'c:\users\*\documents'


#copy all .txt files and paste to other folder 
#show list of all files which contains "powershell" keyword within file 
 




###############Saving and reading data
'This is some text' | Out-File -FilePath $Path




#
Get-Content -Path $Path -Raw

##
$data | Export-CSV -Path $Path
Import-CSV -Path $Path



