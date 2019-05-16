<?php
 
if(isset($_POST["contactus"])) {
    $visitor_name = $_POST["visitor_name"];
    $visitor_email = $_POST["visitor_email"];
  
    $visitor_message = $_POST["visitor_message"];
    $visitor_name = filter_var($visitor_name, FILTER_SANITIZE_STRING);

    $email_message="<p>You have a new contact from your website<br>
    Visitor Name: $visitor_name. <br>
    isitor Email: $visitor_email <br>
    Message: $visitor_message <br>
    </p>";

    $subject="New contact form";
    
     
    if(!filter_var($visitor_email, FILTER_VALIDATE_EMAIL)){
        echo "Invalid email";
    }
    else if(empty($visitor_message)) {
        echo "Please submit a message";
    }
    else{

        // subit the form now
        $recipient = "email@hng.com";    
        
        $headers = "From: info@websieserver.com" . "\r\n";
        
        if(mail($recipient, $subject, $email_message, $headers)) {
            echo "Thank you for contating us $visitor_name";
        }
        else{
            echo "Mail not configured";
        }
    }
     
} 
else {
    echo '<p>Something went wrong</p>';
}
 
?>