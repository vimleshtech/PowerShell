$content
##
(type my.txt).Count  #
###
$lines = type my.txt
$lines[0]
## first two lines 
type my.txt -t 2 


###
Set-Content animals.txt "cat", "dog", "giraffe" # create new file and add data
Add-Content animals.txt "elephant", "cow" # add data in existing file 


###
type animals.txt | sort

#
type animals.txt | sort Length


##
$table = get-childitem -recurse | where {! $_.PSIsContainer}
foreach($file in $table){
    $file.Name
    $file.FullName
}



### 
$rc = 0

foreach($l in $content)
{    
         if( $rc -le 1)
         {
             $l
         }
        $rc++
}
