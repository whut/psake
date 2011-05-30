properties {
	$x = "a";
	$y = "b";
	$sum_property = $x + $y
}

derivedproperties {
  $sum_derivedproperty = $x + $y
}

task default -depends TestProperties

task TestProperties { 
  Assert ($sum_property -eq "ab") "Changing properties from command line should not change property that makes sum of them"
  Assert ($sum_derivedproperty -eq "12") "Changing properties from command line should change derived property that makes sum of them"
}