## wap to show sum of all ements which present in array
## wap to show all elements from array which is greter 
#average value

#loop
 #types of loop
 #i. for  : for($i=0; $i -le 10; $i++){ ... }
 #ii. while:  $i= 1  while($i -le 10) {    .. $i++ }
 #iii. do while : $i= 1  do {    .. $i++ }while($i -le 10)
 #iv. do until : $i= 1  do {    .. $i++ }until($i -le 10)
 #v. advance loop/for each  : for($item in $items) { }

#array: is collection of data or values 
      #:multiple values can be stored on single variable
      #:array is also known as container 

#syntax:
$a = 1,2,3,2,"f"
$a = @(1,2,3,2,"f")

$a = @(111,2222,200113,222244)   
#last index of array will be size/length-1
#length of array will be last index+1

#access array element 
$a[2]
$a[4]  # not allowed / out of index 

$a.Length  # return count of elements

for($i =1; $i -le 3; $i++){
    $a[$i]
}


#function
#file handling

#loop:
for($i=0; $i -le 10; $i++){

    $i 
}

###nested loop : loop inside loop
## r =1 ,c = 1 2 3 
## r =2 ,c = 1 2 3 
## r =3 ,c = 1 2 3 
## r =4 ,c = 1 2 3 
## r =5 ,c = 1 2 3 
### print table 2 to 20 
for($r=2; $r -le 20; $r++){

    for($c=1; $c -le 10; $c++){
          "$r * $c =" + $r*$c 
    }

}

### while loop 
$i= 1  
while($i -le 10) {   
 $i 
 $i++  
 }

### while loop : nested while loop 

$i= 2 
while($i -le 20) {   

  $c =1
  while($c -le 10 ){

            $c++
  }

 $i++  

 }
#do while  : will execute at least onece 
$i =1
do
{

  $i++
}while($i -lt 1)



######################## array with foreach
$array = @("test1", "test2", "test3")

for ($i=0; $i -lt $array.length; $i++) {
	
        $array[$i]
}

##or : forward only 
foreach($s in $array){
    $s
}
#####

###
$array = @("test1", "test2", "test3")

$array += "test4"
$array


####
$array1 = @("test1", "test2", "test3")
$array2 = @("test4", "test5")

$array = $array1 + $array2
$array


###
$myArray[4]
$myArray[4..9]

Return the last element in an array:
$myArray[-1]
# function : is set of instructions/command which can be reused
# there are following category of functions:
#i. SDF : system defined function / inbuild function 
#ii. UDF : user defined function/ custom function 

#i. SDF : system defined function / inbuild function 
$array.Length
$array[1].ToUpper()
$array[1].ToLower()
$array[1].Remove('t')
$array[1].Replace('oldvalue','new value')
###nitin
($array[1].Substring(0,3)).replce('n','a')
$aa ="shsujgsj"
$aa[3].Replace('a','bb')

$aa[3]='z'
$aa ="shszjgsj"

$aa[0].ToUpper()+$aa.Substring(1,$aa.Length).ToLower()


###
$myArray.gettype()

#i. SDF : system defined function / inbuild function 
#- Arithmeic function , 
#- String function , 
#- date function , 
#- conversion / type casting 

#ii. UDF : user defined function/ custom function 
#types of udf:
#i. no argument no return 
#ii. no argument with return 
#iii.  argument with no return 
#iv.  argument with  return 

#i. no argument no return 
funame(){

    'welcome'
}

#ii. no argument with return 
funame(){

    $n =3333
    return $n 
}

#iii.  argument with no return 
funame($a,$b){

    $n =$a+$b
    $n 
}
#iv.  argument with  return 
add($a,$b){

    $n =$a+$b
    return $n 
}
#### function example

#argument with return 
function add([int] $x, [int] $y) {

    $z = $x+ $y
    #"Function is running"
    return $z
}

#someFunction (5, 4) --Wrong 
$b = add 5 4   
$b 
$b = $b *1.10
$b 


#argument with no return 
function sub([int] $x, [int] $y) {

    $z = $x- $y
    #"Function is running"
    $z
}

$m = 33
sub $m  33

sub 45 33
sub 45 33
sub 45 33


#argument with no return 
function aa($y) {

    $s  = 0
    foreach($e in $y){
        $s = $s+ $e    #$s += $e 
    }

    $s
}

$d = @(1,22,3,4)
#call/invoke to function 
aa $d


## wap to convert digit to word ...
# 123 = one hundred twentry three 

$w1 = 
@('zero','one','two','three','four','five','six'
,'seven'
,'eight','nine','ten','eleven'
,'twelve'
,'thirteen'
,'fourteen','fifteen','sixteen'
,'seventeen'
,'eighteen','ninteen')


$w2 = 
@('','','twenty','thirty','fourty','fity','sixty'
,'seventy'
,'eighty','ninty')


$n = 91
if($n -lt 20){

$w1[$n]

}
else if($n -lt 100)
{

    $n1  = $n/10  # 9 
    $n2  = $n % 10 # 1
    $w2[$n1]+" "+$w1[$n2]

}


$n =96
#$n1  = (($n/10).ToString()).Substring(0,1)  # 9.6 
#$n2  = $n % 10 # 1

$n2  = $n % 10 # 6
$n1 = ($n-$n2)/10

$n1
$n2

