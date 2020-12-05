<?php
// Modified by L0C4LH34RTZ
// DONT CHANGE COPYRIGHT OR I'LL ENCRYPT THIS
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

require('vendor/autoload.php');

$one = explode("|", $argv[1])[0];
$two  = explode("|", $argv[1])[1];
$three = explode("|", $argv[1])[2];
$four = explode("|", $argv[1])[3];
$five = explode("|", $argv[1])[4];

$mail = new PHPMailer(true);

// Settings
$mail->IsSMTP();
$mail->CharSet = 'UTF-8';

$mail->Host       = $one; // SMTP server example
$mail->SMTPDebug  = 2;                     // enables SMTP debug information (for testing)
$mail->SMTPAuth   = true;                  // enable SMTP authentication
$mail->Port       = (int) $two;                    // set the SMTP port for the GMAIL server
$mail->Username   = $three; // SMTP account username example
$mail->Password   = $four;        // SMTP account password example
$mail->SMTPAutoTLS = true;  // Enable TLS protocol automatically if needed 

$mail->setFrom("$three", "$three"); // Set From Mail
$mail->addAddress('mail@example.com', 'mail2@example2.com'); // PUT YOUR EMAIL HERE & CAN MULTIPLE ADDRESS

// Content
$mail->isHTML(true);                                  // Set email format to HTML
$mail->Subject = "Evmoure Checker - $three";
$mail->Body    = '<style>.mek{ font-family: "Farsan", cursive; size: 5; }</style><link href="https://fonts.googleapis.com/css?family=Farsan&display=swap" rel="stylesheet"><font class="mek">However about you, Wherever you are<br>I still loving you,<br>So much.</font><br><br><center><font size="1" color="grey">Powered By Graylife.Co</font></center>';
$mail->AltBody = $three;

$mail->send();
?>
