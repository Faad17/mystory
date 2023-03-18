<?php

  class N{

    public static $e;
    public static $database;
    public static $DIR = "/mystory";
    public static $GMAIL = "oguunbolarindamilare@gmail.com";
    public static $GMAIL_PASSWORD = "Mortals@123";

    public static function _DB(){
      try {
        self::$database = new PDO('mysql:host=localhost;dbname=mystory;charset=utf8mb4','root','');
        self::$database->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $e = self::$e;
      } catch (PDOException $e) {
        echo $e->getMessage();
      }
      return self::$database;
    }

  }

?>
