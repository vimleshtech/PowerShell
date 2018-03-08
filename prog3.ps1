# types of loop 
# keywords: break, continue 
# array : is collection of data of values / multiple  values can be stored on single variable


# types of loop 
#i. for 
      for ($i=1; $i -le 5 ; $i++) 
        {
         $i 
        }


#ii. while 
    $i =1
    while ($i -le 4)
    {
        $i 

        $i++
    }
#iii. do while# at execute at least once 
  $i =0
  do
  {

    $i 
    $i++
  }while($i -lt 0)


#iv. do until


#v. foreach / advance loop 
$d =@('a','b','c','d','raman') #array : collection of data or values 
                # multiple values can be stored on single variable 

#$d[0]

 foreach ($e in $d) {

    $e 
 }

############################################
############################################
##  break 
for($i =1; $i -le 10 ; $i++)
{

    if($i % 3 -eq  0)
    {

        break   # terminate the loop iteration 
    }
    $i 
}

##  continue 
for($i =1; $i -le 10 ; $i++)
{

    if($i % 3 -eq  0)
    {

        continue   # skip the iteration
    }
    $i 
}
####################################################
#####################################################
# array : is collection of data of values / multiple  values can be stored on single variable

#normal variable:
$n =100
#array variable 
$n = @(1,2,2,32111,2222,112,'ddd','ffddd')
$n

[int]$n = @(1,2,2,32111,2222,112)
#read by index
$n[2]
$s = 0
foreach($e in $n){

   $s +=  $e  # $s = $s +$e
}

$s 
$n.Length
$n.RemoveAt(1)
$n.Add(22)
$n.Contains(2)


###
[int[]] $e = 1,2,3,4,5,6,7,8,9

### two dimenssion array 
$aa =@(122,'jatin',31)  #one dimenssion 

$emp= @((111,'nitin',23),(122,'jatin',31)  ) # two dimenssion 

foreach($r in $emp )  # table to row 
{

    foreach($c in $r)  # row to column 
    {
        $c
    }

}

####
function gdate{

Get-Date

}

function add($a,$b){


 $c =$a+$b
 $c 
}

function Addtion ([int] $x, [int] $y) {
$z = $x+ $y

return $z
}

$b = Addtion 5 4   --right 
$b # sum of tow valies






add 11 22
