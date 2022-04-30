
function Send-ToEmail([string]$email, [string]$subject, [string] $body){

    $message = new-object Net.Mail.MailMessage;
    $message.From = "sendfrom@email.com";
    $message.To.Add($email);
    $message.Subject = $subject;
    $message.Body = "Here's your email notification!\n" + $body;

    $smtp = new-object Net.Mail.SmtpClient("smtp.gmail.com", "587");
    $smtp.EnableSSL = $true;
    $smtp.Credentials = New-Object System.Net.NetworkCredential("sendfrom@email.com", "credentials");
    $smtp.send($message);
    write-host "Mail Sent" ; 
 }
 $subjects = 'Youre free for the day!','Your name is in the list :(','Ummm the cause list document is missing','this should not happen'
 $subject = $subjects[3]

$val = python court.py

 if($val -eq 'Y'){
   echo "value is Y"
   $subject = $subjects[1]
} elseif($val -eq 'N'){
    echo "Value is N"
   $subject = $subjects[0]
} elseif($val -eq 'F'){
    echo "Value is F"
   $subject = $subjects[2]
} else {
   echo "unbound case"
}

Send-ToEmail  -email "sendto@email.com" -subject $subject