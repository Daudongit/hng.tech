<?php

    //include config file
    require("./config.php");
    //get the sql
    $sql = file_get_contents("./data.sql");

    //make an instance of class DB
    $db = new DB;
    // connect and create database
    $db->connection()->exec($sql);



?>