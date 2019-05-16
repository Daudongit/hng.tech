<?php

    Class DB {
        //declare class properties
        private $host;
        private $username;
        private $password;
        private $dbname;
        private $charset;

        //declare database connection 
        public function connection() {

            //assign value to all class properties
            $this->host = "localhost";
            $this->dbname = "hng_tech";
            $this->username = "root";
            $this->password = "";
            $this->charset ="utf8mb4";

            try{
                //make a dsn variable
                $dsn = "mysql:host=".$this->host.";charset=".$this->charset.";dbname=".$this->dbname;
                //connect to database
                $pdo = new PDO($dsn, $this->username, $this->password);
                //search for error
                $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                //echo "database created successfully";
                //return connection
                return $pdo;
            }catch(PDOException $e){
                //show error
                echo "Connection failed ".$e->getMessage();
            }

           
        }

    }
    
?>