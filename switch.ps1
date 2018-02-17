
[int]$product_quantity = Read-Host -Prompt  "Enter Quantity:"
[int]$price= Read-Host -Prompt  "Enter Unit Price:"

[int]$a = Read-Host -Prompt "enter your value"


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


$sales_amt = ($product_quantity * $price)

if ( $sales_amt -gt 500000)
    {
    $sales_amt = $sales_amt -($sales_amt *0.12)
    }
elseif ( $sales_amt -gt 100000)
    {
    $sales_amt = $sales_amt -($sales_amt *0.10)
    }
elseif ($sales_amt -gt 50000)
    {
    $sales_amt = $sales_amt -($sales_amt *0.05)
    }
elseif ($sales_amt -gt 10000)
    {
    $sales_amt = $sales_amt -($sales_amt *0.02)
    }


if ($sales_amt -gt 50000)
{
    $FinalPrice = $sales_amt + ($sales_amt * 0.18)
}
else 
 {$FinalPrice = $sales_amt + ($sales_amt * .05)
}

$FinalPrice



