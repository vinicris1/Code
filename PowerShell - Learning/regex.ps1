#https://regexr.com/3e48o
#https://regexlib.com/CheatSheet.aspx

$email = Read-Host Qual seu e-mail?

$regex = "^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$" #\w = 

if ($email -notmatch $regex){
    Write-Host "Endereco de e-mail invalido $email" -ForegroundColor Red
    Exit
}

Write-Host E-mail valido! -ForegroundColor Yellow