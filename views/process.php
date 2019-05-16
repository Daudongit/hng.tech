
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
         $recipient = $_POST["visitor_email"] ;
         
         $from = "Cole Eremoh HNG Intern";
         
         // CALL MEMBERSDRIVE SIMPLE REST MAIL API USING GET METHOD
             // PREPARE THE PARAMETERS
             
         // encode email parameters 
         $email_message=urlencode($email_message);
         $from=urlencode($from);
         $subject=urlencode($subject);
         $email_message=urlencode($email_message);
         // END POINT
         $MembersdriveMailerEndpoint="https://www.app.membersdrive.com/MailAPI?to=".$recipient."&from=".$from."&subject=".$subject."&body=".$email_message."&userid=cole_hng&replyto=$from";
         if(file_get_contents($MembersdriveMailerEndpoint)=="OK") {
             echo "Thank you for contating us $visitor_name";
         }
         else{
             echo "Mail not configuredxxxxxxxxx";
         }
     }
      
 } 
 else {
     echo '<p>Something went wrong</p>';
 }
  
 ?>