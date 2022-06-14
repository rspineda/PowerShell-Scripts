#get some proccess to kill it / textEdit on mac:
Get-Process | Where-Object {$_.name -eq "TextEdit"} | Stop-Process

#using the method on that object:
(Get-Process | Where-Object {$_.name -eq "TextEdit"}).kill()

#get some process and sorting by id
Get-Process -name textedit | sort-object -property id
