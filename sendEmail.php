<?php
require 'PHPMailerAutoload.php';

function sendingEmailTest(){
	$mail = new PHPMailer;

	$mail->SMTPDebug = 3;                               // Enable verbose debug output

	$mail->isSMTP();                                      // Set mailer to use SMTP
	$mail->Host = 'smtp.zoho.com';  // Specify main and backup SMTP servers
	$mail->SMTPAuth = true;                               // Enable SMTP authentication
	$mail->Username = 'fmora@passeapp.com';                 // SMTP username
	$mail->Password = 'fausto123';                           // SMTP password
	$mail->SMTPSecure = 'ssl';                            // Enable TLS encryption, `ssl` also accepted
	$mail->Port = 465;                                    // TCP port to connect to

	$mail->setFrom('fmora@passeapp.com', 'Mailer');
	$mail->addAddress('faanmora@espol.edu.ec', 'Fausto Mora');     // Add a recipient
	$mail->isHTML(true);                                  // Set email format to HTML

	$mail->Subject = 'Here is the subject';
	$mail->Body    = 'This is the HTML message body <b>in bold!</b>';
	$mail->AltBody = 'This is the body in plain text for non-HTML mail clients';

	if(!$mail->send()) {
	    return 'Mailer Error: ' . $mail->ErrorInfo;
	} else {
	    return 'Message has been sent';
	}
}

//echo sendingEmailTest();