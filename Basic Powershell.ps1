#fix data / static value 
$a = 111 #int  , variable = data / value 
$name  = 'nitin' #str 

$a
$name

##################### dynamic data or read data from user/console 
#user input 
$Server = Read-Host -Prompt 'Input your data'

#print 
$Server

#user input 
[int]$n1= Read-Host -Prompt 'Input your number'

#user input 
[int] $n2 = Read-Host -Prompt 'Input your number'

$n = $n1 + $n2 

Write-Host "Sum of two numbers :  $n "

##set sysrem date
$Date =  ### read system date

Write-Host "You input server $Server  and $Date "


#### condition # print total score and grade 

$hs = 81
$es = 82
$cs = 83
$ms = 84

$total = $hs+$cs+$ms +$es 
$total 
$avg =$total / 4

$avg 

$grade = ""

### operator : arithemtic  opeator (+ - * / %(mod) )
####         :conditioal opeator  (-gt  -le -eq -ge -le )
#if($n1 -gt $n2 -and $n1 -gt $n3)

if ( $avg -gt 90)
{
    $grade = "S"
}
elseif($avg -gt 75 -and $avg -lt 91)
{
    $grade = "A"
}
elseif($avg -gt 60  -and $avg -lt 76)
{
    $grade = "B"
}
elseif($avg -gt 50  -and $avg -lt 61)
{
    $grade = "C"
}
elseif($avg -gt 39)
{
    $grade = "D"
}
else
{
    $grade = "F"
}

$grade



###switch case 
$a = 1

switch ($a) 
    { 
        1 {"The color is red."} 
        2 {"The color is blue."} 
        3 {"The color is green."} 
        4 {"The color is yellow."} 
        5 {"The color is orange."} 
        6 {"The color is purple."} 
        7 {"The color is pink."}
        8 {"The color is brown."} 

        default {"The color could not be determined."}
    }



$choice = 1 # take input as month number  : 1 ,2 
$year = 2018 

$n1 =222
$n2 =223

switch ($choice) 
    { 
        1 {
            $n = $n1 + $n2 
            $n 
           } 
        2 {
            $n = $n1 - $n2 
            $n 
           } 
        3 {
            $n = $n1 * $n2 
            $n 
           } 
        
        default {"choice is not valid"}
    }



    $a = "d14151"

    $z  = Read-Host -Prompt "enter char or data "


switch -wildcard ($z) 
    { 
        "*a" {"The color is red."} 
        "*b" {"The color is blue."} 
        "*c" {"The color is green."} 
        "*d" {"The color is yellow."} 
        "*e" {"The color is orange."} 
        "*f" {"The color is purple."} 
        "*g" {"The color is pink."}
        "*h" {"The color is brown."} 
        default {"The color could not be determined."}
    }




    $a = "d14151"

switch -wildcard ($a) 
    { 
        "?14150" {"The color is red."} 
        "?14151" {"The color is blue."} 
        "?14152" {"The color is green."} 
        "?14153" {"The color is yellow."} 
        "?14154" {"The color is orange."} 
        "?14155" {"The color is purple."} 
        "?14156" {"The color is pink."}
        "?14157" {"The color is brown."} 
        default {"The color could not be determined."}
    }




    $a = "r14151"

    $m = "b"

switch -regex ($m) 
    { 
        "[a-d]" {"The color is red."} 
        "[e-g]" {"The color is blue."} 
        "[h-k]" {"The color is green."} 
        "[l-o]" {"The color is yellow."} 
        "[p-s]" {"The color is orange."} 
        "[t-v]" {"The color is purple."} 
        "[w-y]" {"The color is pink."}
        "[z]" {"The color is brown."} 
        default {"The color could not be determined."}
    }




[int]$d = Read-Host -Prompt "enter data"

#\d{1}  < 123  0 1 2 3 
#\d{2}  < 1
#\d{3}  < 1

switch -regex ($d) 
    { 
        "\d{8}" {"The color is red."}  
        "\d{7}" {"The color is blue."} 
        "\d{6}" {"The color is green."}  
        "\d{5}" {"The color is yellow."}  
        "\d{4}" {"The color is orange."}         
        "\d{3}" {
                    
                       $sal = $sal+ ($sal-500000)*.20
                }  
        "\d{2}" {
        
                    $sal =  $sal+ ($sal -100000)*.10
            } 
        "\d{1}" {"The color is brown."}  
        default {"The color could not be determined."}

    }


#############################
# LOOP : is iterator or repeation of set of commands/instructions/code
#Example : 
#        1 .......10000
# fundamental of loop 
# i. init / start                   : 1
# ii. condition /limit              : 10000
# iii. increment / decremnt         : +1


There are follownig types of loop:
i. for 
ii. while
iii. do while
iv. until 
v. foreach/advance loop 

#############################

##### init = $i=0;
##### condition = $i -le 10
### increment  = $i++   or $i = $i +1

For ($i=1; $i -le 10; $i++) 
{
   "19 * $i = "+(19*$i)
}
## wap to get count of all even and odd numbers between two given number
## n1 = 10 , n2 = 123

For ($i=10; $i -gt 0; $i--) 
{
   $i 
}

### print all odd number
For ($i=1; $i -le 10; $i=$i+2) 
{
   $i 
}

# print all even number

### print all odd number
For ($i=2; $i -le 20; $i=$i+2) 
{
   $i 
}


#### get sum of all even number between 4 to 87
$su = 0
For ($i=4; $i -le 87; $i=$i+2) 
{
    $su = $su + $i  
    
}
$su 

###########  factorial 
####### 5  : 5*4*3*2*1  = 120
## how to calculate fact..

$n = 5    
$o = 1
For ($i=$n; $i -ge 1; $i--) # 5 4 3 2 1
{
   $o = $o * $i  
}
$o 


##### prime number  : number which can be dived by 1 or itself only i.e is prime number
###  1, 3 5 , 7 , 11 , 13, 17 , 19

$n  = 12
$flag = 1

for($i =2 ; $i -lt $n/2 ; $i++)
{
    if( $n % $i -eq 0)
    {
        $flag  = 0
        $flag  
        $i
        break
    }    
}

if($flag  -eq 1)
{
    "prime no."
}
else
{
    "not prime"
}



############# collection , array , multiple values 
$a =1 # single value 
$id = @(1,222,212212,21,2,2222,22222,3,333)
$id.Length
#$id[3] 
for($i=0; $i -lt $id.Length; $i++)
{
    $id[$i]
}
### wap to get sum of all number from array list     
### wap to get average of all numebrs              ***
#### wap to show highest value from array list     ****
#### wap to show lowest value from array list 


####
$colors = @("Red","Orange","Yellow","Green","Blue","Indigo","Violet")
 For ($i=0; $i -lt $colors.Length; $i++) 
 {
    $colors[$i]
 }


 ####

 $i=1
 while($i -lt 10){

 $i 
 $i++

 }

 $i=1
 Do {
    $i
    $i++
    }
 While ($i -le 10)


$i=1
 Do {
    $i
    $i++
    }
 Until ($i -gt 10)


###################################
string function 
######################################







