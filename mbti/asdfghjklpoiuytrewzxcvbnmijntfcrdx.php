<?php
include_once './mbtiMain.php';

$fullurl = @$_SERVER['REQUEST_URI'];
$pag = strtolower(ltrim($fullurl, '/'));
$page_ = rtrim($pag, '/');
$data = explode('/', $page_);
if (!false) {
    $dir = array_shift($data);
}
$page = @$data[0];
if (empty($page) || $page == 'home') {
    die(include_once @'./test_page.php');
} else if ($page == 'submit-test') {
    Mbti::createTestInstance($_POST);
} else if ($page == 'results') {
    $email = @$data[1];
    //die($email);
    die(include_once @'./result_page.php');
}
