<?php
    if ( 0 < $_FILES['file']['error'] ) {
        echo 'Error: ' . $_FILES['file']['error'] . '<br>';
    }
    else {
        // generation du nom du fichier
        //$nomDuFichier = 'uploads/' . $_FILES['file']['name'];
        $nomDuFichier = '../images/img' . uniqid() . '-' .  str_replace(" ","-",$_FILES['file']['name']);

        move_uploaded_file(
             // this is where the file is temporarily stored on the server when uploaded
            // do not change this
            $_FILES['file']['tmp_name'],
            // this is where you want to put the file and what you want to name it
            // in this case we are putting in a directory called "uploads"
            // and giving it the original filename
            //'uploads/' . $_FILES['file']['name']
            $nomDuFichier
        );
        echo $nomDuFichier;
    }
?>