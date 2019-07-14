<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <base href="http://localhost/mbti/">
        <title></title>
        <meta name="author" content="">
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link href="css/normalize.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
    </head>
    <style>
        #main-content{
            text-align: center;
            padding-left: 20px;
            margin-left: 20%;
            width: 60%;
            border-left: 1px #ccc solid;
            min-height: 100px;
            font-weight:bold;
            color: slategrey
        } 
        .question-holder{
            width: 100%;
            min-height: 130px;
        }
        .color-badge{
            margin-left: 6px;
            min-height: 80px;
            height: 100%;
            width: 1%;
            max-width: 10px;
            background: red;
            float: left;
        }
        .content-badge{
            float: right;
            width: 98%;
        }
        .divider-holder{
            width: 90%;
        }
        .divider-circle{
            background: #ccc;
            height: 24px;
            width: 24px;
            border-radius: 12px;
            float: left;
        }
        .divider-line-holder{
            padding-top: 12px;
            float: right;
            min-height: 24px;
            width: 90%;
        }
        .divider-line{
            background: #ccc;
            height: 2px;
            width: 100%;
        }
        .answer-radio{
            height: 20px;
            width: 20px;
            vertical-align: middle;
            margin-left: 20px;
            margin-right: 20px;
        }
        .answer-holder{
            text-align: center;
        }
        .question-div{
            font-size: 16px;
            margin-bottom: 10px;
            padding:10px;
        }
        #email-ipnut{
            width:84%;margin-left: 5%;height: 30px;border-radius: 10px;padding:10px;font-size: 18px;
        }
        #submit-btn{
            width:20%;color:white;background: blue;padding: 10px;border-radius: 5px;margin-top: 10px;border:1px #ffffff solid;
        }
        .error-div{
            padding:20px;border-radius: 20px;margin:20px;background: red;color: white;font-size: 20px;display: none;
        }
    </style>
    <body>

        <p style="margin-left:20%;font-size: 20px;font-weight: bold;">Complete the 7 min test and get a detailed report of your lenses on the world.</p>
        <br>
        <div id="main-content">
            <div class="error-div">Error! Please answer all the question and provide a valid email to continue</div>
            <form method="POST"  action="submit-test" method="POST" id="test-form">
                <?php
                $arrFancyColors = array('red', 'blue', 'brown', 'black', 'purple', 'orange', 'brown', 'blue', 'black', 'purple');
                $question = Mbti::getQuestions();
                foreach ($question as $key => $value) {
                    ?>
                    <div class="question-holder">
                        <div class="color-badge" style="background:<?php echo @$arrFancyColors[$key]; ?>"></div>
                        <div class="content-badge">
                            <div class="question-div">
                                <?php echo $value['Question'] ?>
                            </div>
                            <div class="answer-holder">
                                <span style="font-weight: bold;color: red;">Disagree</span>
                                <?php
                                for ($i = 1; $i <= 7; $i++) {
                                    echo "<input type='radio' name='answer[{$value['id']}]' value = '$i' class='answer-radio'/>";
                                }
                                ?>
                                <span style="font-weight: bold;color: green;">Agree</span>
                            </div>
                            <div style="width:90%;margin:20px;margin-left:5%;height: 1px;background:<?php echo @$arrFancyColors[$key] ?>;"></div>
                        </div>
                    </div>
                <?php }
                ?>
                 <div class="error-div">Error! Please answer all the question and provide a valid email to continue</div>
                <input id="email-ipnut"  name="email" type="text" placeholder="Enter a valid email"/>
                <input id="submit-btn" type="submit" value="Save & Continue">
            </form>
        </div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
         <script src="https://cdn.jsdelivr.net/npm/sweetalert2"></script>
        <script src="js/blockUI.js"></script>
        <script type="text/javascript" src="js/ajaxForm.js"></script>
        <script src="js/script.js"></script>
    </body>

</html>