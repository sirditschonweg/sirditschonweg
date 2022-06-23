$aaa = @("Mo","DI","MI")
$bbb = @("Mo","DI","MI","DO","FR")

$ccc = Compare-Object -ReferenceObject ($aaa) -DifferenceObject ($bbb) -PassThru

$ccc