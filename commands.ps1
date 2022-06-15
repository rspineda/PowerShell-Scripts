#get some proccess to kill it / textEdit on mac:
Get-Process | Where-Object {$_.name -eq "TextEdit"} | Stop-Process

#using the method on that object:
(Get-Process | Where-Object {$_.name -eq "TextEdit"}).kill()

#get some process and sorting by id
Get-Process -name textedit | sort-object -property id

#send proccess data to a file
Get-Process > process.txt

#export it as csv file:
Get-Process | export-csv proc.csv

# o tmb
Get-Process | Out-File proccess2.txt

#see that content (like cat)
Get-Content ./proccess.txt

# export as xml:
$procs2 = Get-Process | Export-Clixml proccess3.xml

#Remoing that file
Remove-Item ./proccess.txt

#if I want to get objects from the data imported from a csv file:
$procs = import-csv ./proc.csv

#display that object ( i can check that with $procs | gm )
$procs
$procs2

#sorting proccesses by descending working set and listing first 5:
Get-Process | Sort-Object ws -Descending | Select-Object -first 5
