<?php
    

       //Accreditation
    if ($rule == "Admin"){
        
        header('location:Admin.php');
    
    }elseif($rule == "Authentifié"){
        
        header('location:Authentifié.php');
    
    }else{
        header('location:inscription.php');
    }

    ?>