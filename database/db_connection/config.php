<?php

    Class DBConnection {

        //declare class properties
        private $host;
        private $username;
        private $password;
        private $dbname;
        private $charset;

        //declare database connection 
        protected function connection() {
            //assign value to all class properties
            $this->host = "localhost";
            $this->username = "root";
            $this->password = "";
            $this->dbname = "hng_tech";
            $this->charset ="utf8mb4";

            try{
                //make a dsn variable
                $dsn = "mysql:host=".$this->host.";dbname=".$this->dbname.";charset=".$this->charset;
                //connect to database
                $pdo = new PDO($dsn, $this->username, $this->password);
                //search for error
                $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

                echo "Connected to database";
                //return connection
                return $pdo;
            }catch(PDOException $e){
                //show error
                echo "Connection failed ".$e->getMessage();
            }

           
        }

    }
    
?>