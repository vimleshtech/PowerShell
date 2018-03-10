# Array : is collection of data or multiple values can be stored on single variable 
# array index will start from 0 
# last index of array will be length - 1

#example 1:

$id = @(1001,2001,3001,4001,5001,3001,3002,3001)
$id.Length   # return count of elements 

# print all element of array 
$id 

# print/access array element by index 
$id[0]  # return first element from array 
$id[2]  # return third element from array 


##### loop   : for , foreach 
###for 

#$i = 0    # first index of array 
#show sum of all elements 
$s = 0

for($i = 0; $i -lt $id.Length; $i++)
{
      $s += $id[$i]  # $s = $s + $id[$i] 
} 

Write-Host  $s
### foreach  : forearch is forward only 
foreach($e in $id)
{
    $e
}


######
# check given data present or not in array 
######

$tbs  = 3001
$c = 0
foreach($e in $id)
{
    if ( $e -eq $tbs){
      Write-Host "data found $e "
      $c++
    }

}

Write-Host "count of given value = $c " 



##############################
# Function : is set instuctions or command which is reusable 
# There are following types of functions 
# i. no argument no return 
# ii. no argument with return 
# iii. argument with no return 
# iv. argument with return 
################################

#create function 
# function  : is keyword 
# add : is name function which is given by user 
# $a, $b : are arguments or parameter 

# iii. argument with no return 
function add($a, $b){

    $c = $a+$b 
    Write-Host "sum of two numbers : $c"
}

# iv. argument with return 
function sub($a, $b){

    $c = $a-$b 
    return $c 
}


#### call/invoke to function 
$o = sub 10 2 
add $o 100




###### questions :digit to word
$num = @(0..19)$num1 = @(20..99)$single = @('zero','one','two','three','four','five','six','seven','eight','nine','ten','eleven','twelev','therteen','fourteen','fifteen','sixteen','seventeen','eighteen','ninteen')$double = @('tweenty','thirty','fourty','fifty','sixty','seventy','eighty','ninty')[int] $X = Read-Host -prompt "Enter Value"$d= $x % 10[int] $dfor ($c = 0; $c -le $num.Length; $c++){        if( $d -eq $num[$c])           {                $Z = $single[$c]                $z                break            }            else            {                                    }                }



############# 
dir   : show list of files and directories 
cd    : change directory 
mkdir : create new directory      
cp    : copy file from one loction to different 
mv    : move  file from one loction to different 
rm    : remove file 
rmdir : remove directory











