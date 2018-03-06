
$a = 10 # declation of variable and assign data
$a      # print value of $a 

$a = '10'       # integer 
$b = 1.1      #float 
$b 
$name = 'raman' #string 
$ad   = "tilak nagar -110018" #string 

$name 
$ad 

## declare variable with data type  [type]

[int]$n  =1
$n  #print

[string]$d = 'asjksh shgsjs hgsf h123763545634c'
$d 

[bool]$status = 0
$status



[decimal]$price = 333.22
$price



#### variable and operator 
[int]$hs  = 88
[int]$es  = 99
[int]$cs  = 66
[int]$ms  = 77

#$hs = 'sss'

$total = $hs+$es+$cs+$ms 
$total
$avg = $total / 4
$avg 


$a = $b = $c = 1

########
$a, $b, $c = 1, 2, 'a'

[int]$a, [int]$b, [string]$c = 1, 2, 'a'


##naming 
$first no = 1  #incorrect
$first-no = 1  #incorrect

$1a     = 1 #correct 
$first_no = 1  #correct 


$a = $b = $c = 1

########
$fname, $mname, $lname = 'raman','kumar','sinha'

$lname 




### input and output
############################################
[int]$n1 = Read-Host "Please enter a number" 
$Square=$n1*$n1 

Write-Host "The square of the number $n1 is $Square"




[DateTime]$Date = "February 28, 2015" 
$Date

$Today = Get-Date 
$Today


$Days = ($Today - $Date).Days  

Write-Host "difference of two days $Days day(s) "



##### operator 
# arithmetic : +  -  *  /  % 
# conditional : -eq      -gt    -ge    -lt   -le    
# incrementer and decrementer :  ++   ii

$i =0
$j =0
$i++   # postfix   # $i = $i+1
++$j   # prefix 


### conditional statement 
[int]$n1 = Read-Host "Please enter a number" 
[int]$n2 = Read-Host "Please enter a number" 


if($n1 -gt $n2)  # if condtion 
{
    Write-Host "n1 is greater"   # true       
}
else 
{
    Write-Host "n2 is greater"         # false 
}


###
[int]$hs  = Read-Host "enter score in hs "
[int]$es  = Read-Host "enter score in es "
[int]$cs  = Read-Host "enter score in cs "
[int]$ms  = Read-Host "enter score in ms "

#$hs = 'sss'

$total = $hs+$es+$cs+$ms 
$total
$avg = $total / 4
$avg 


if($avg -ge 70 )
{

    Write-Host "Grade A"
}
elseif($avg -ge 60 )
{

   Write-Host "Grade B"
}
elseif($avg -ge 50)
{

   Write-Host "Grade C"
}
else 
{
  Write-Host "Grade D"

}

#######################
[int]$n1 = Read-Host "Please enter a number" 
[int]$n2 = Read-Host "Please enter a number" 
[int]$n3 = Read-Host "Please enter a number" 


if($n1 -gt $n2 -and $n1 -gt $n3 )  # if condtion 
{
    Write-Host "n1 is greater"   # true       
}
elseif($n2 -gt $n1 -and $n2 -gt $n3)
{
    Write-Host "n2 is greater"         # false 
}
else
{
   Write-Host "n3 is greater"         # false 
}





 ### switch case 

[int]$c = Read-Host "enter your choice "

switch($c)
{
    1 {"File will be deleted"}
    2 {"File will be displayed"}
    3 {"File is write protected"}
    default {"Invalid entry"}
}

