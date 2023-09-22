$FileList = Get-Content -Path .\move-batch1.txt

foreach ($f in $FileList){
	mkdir $f
	(Get-ChildItem -r -PATH '.\*' -Include $f*).fullname | Move-Item -Destination .\$f
}