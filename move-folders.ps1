$FileList = Get-Content -Path .\folder-list.txt

foreach ($f in $FileList){
	mkdir $f
	(Get-ChildItem -r -PATH '.\*' -Include $f*).fullname | Move-Item -Destination .\$f
}
