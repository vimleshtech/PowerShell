
$sales_amt = 7000
if ($sales_amt -gt 5000)
{	
	$sales_amt = $sales_amt -($sales_amt *.02)
}

$sales_amt

$sales_amt = 1000
if ($sales_amt -gt 5000)
{	
	$sales_amt = $sales_amt -($sales_amt *.02)
}
else
{
	$sales_amt = $sales_amt -($sales_amt *.01)
}


$sales_amt



$sales_amt = 70000
if ($sales_amt -gt 100000)
{	
	$sales_amt = $sales_amt -($sales_amt *.10)
}
elseif($sales_amt  -gt 50000)
{
	$sales_amt = $sales_amt -($sales_amt *.05)
}
elseif($sales_amt  -gt 20000)
{
	$sales_amt = $sales_amt -($sales_amt *.02)
}
elseif($sales_amt  -gt 10000)
{
	$sales_amt = $sales_amt -($sales_amt *.01)
}
else 
{
	$sales_amt = $sales_amt -($sales_amt *.001)
}

$sales_amt 

