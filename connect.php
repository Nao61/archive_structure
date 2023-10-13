<?php 
    
    define('DB_SERVER','localhost');
    define('DB_USER','épiz_33463984');
    define('DB_PASS','Eww36521vN');
    define('DB_NAME', 'archive_structure');
    $conn = mysqli_connect(DB_SERVER, DB_USER, DB_PASS, DB_NAME);
    //vérifier la connexion
    if(mysqli_connect_errno()) {
        echo "Failed to connect to MySQL:" , mysqli_connect_error();
    }

?>