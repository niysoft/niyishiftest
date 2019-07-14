<?php

define("DB_HOST", "localhost"); // set database host
define("DB_USER", "root"); // set database user
define("DB_PASS", ""); // set database password
define("DB_NAME", "mbti"); // set database name

class Mbti {
    
    function __construct($email, $arrayQuestions, $arrayAnswers) {
       
    }

    public static function createTestInstance($r) {
        $db = self::getPDOConnection();
        $db->beginTransaction();
        $answers = $r['answer'];
        $email = $r['email'];
        if(!filter_var($email, FILTER_VALIDATE_EMAIL) || count($answers) < 2){
            http_response_code(500);
            die(json_encode(array("status" => false, "message" => "Test could not be submitted", "error" => $ex->getMessage())));
        }
        try {
            $stmt = $db->prepare('INSERT INTO `users` (email) VALUES (?)');
            $stmt->bindParam(1, $email, PDO::PARAM_STR);
            $stmt->execute();
            $lastInsertID = $db->lastInsertId();
            $q = "";
            foreach ($answers as $key => $value) {
                $q .= "INSERT INTO results (question_id, answer, user_id) VALUES ($key, $value, $lastInsertID) " . ";";
            }
            $db->exec($q);
            if (!$db->commit()) {
                $db->rollBack();
            } else {
                http_response_code(200);
                die(json_encode(array("status" => true, "message" => "Result submitted successfully", "url"=>"results/$email")));
            }
        } catch (Exception $ex) {
            $db->rollBack();
            http_response_code(500);
            die(json_encode(array("status" => false, "message" => "Test could not be submitted", "error" => $ex->getMessage())));
        }
    }
    
    public static function getTestResult($email) {
        $query = "SELECT results.*, Question, Dimension FROM results, questions, users 
                   WHERE results.question_id = questions.id AND user_id = users.id AND email = '$email'";
        return self::runSelect($query);
    }

    public static function getQuestions() {
        $query = "SELECT * FROM questions";
        return self::runSelect($query);
    }

    public static function runSelect($sql) {
        try {
            $db = self::getPDOConnection();
            $stmt = $db->prepare($sql);
            $stmt->execute();
            $details = $stmt->fetchAll(PDO::FETCH_ASSOC);
            if (count($details) > 0) {
                return $details;
            } else {
                return false;
            }
        } catch (PDOException $e) {
            return false;
        }
    }

    private static function getPDOConnection() {
        $dbh = null;
        try {
            $dbh = new PDO("mysql:host=" . DB_HOST . ";dbname=" . DB_NAME, DB_USER, DB_PASS);
            $dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_SILENT);
            $dbh->exec("set names utf8");
            return $dbh;
        } catch (PDOException $e) {
            die("Error - " . $e->getMessage());
        }
    }

}

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

