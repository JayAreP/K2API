$files = Get-ChildItem -Recurse | where-object {$_.name -like "*.md"}

$index = @()
foreach ($i in $files) {
    $linkname = $i.FullName.replace('D:\Dropbox\Dropbox\VSCode\API_Docs\','')
    $linkpath = $i.FullName.replace('D:\Dropbox\Dropbox\VSCode\API_Docs\','.\')
    $markstring = '[' + $linkname + '](' + $linkpath + ')' + '  '
    $markstring.Replace('\','/') | Out-File .\index.md -Append
}

