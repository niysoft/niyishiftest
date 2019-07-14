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
            padding-left: 14px;
            margin-left: 20%;
            width: 60%;
            border-left: 1px #ccc solid;
            min-height: 100px;
            color: slategrey
        } 
        table {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        td, th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
            font-size: 14px;
        }

        tr:nth-child(even) {
            background-color: #dddddd;
        }
    </style>
    <body>
        <?php $answers = @Mbti::getTestResult($email);
        if (isset($answers) && count($answers) > 0) { ?>
            <p style="margin-left:20%;font-size: 20px;font-weight: bold;color:green;">
                Your MBTI Test Result with email: <?php
                echo $email;
                ?>
            </p>
            <br>
            <div id="main-content">
                <table>
                    <tr>
                        <th>S/N</th>
                        <th>Question</th>
                        <th>Dimension</th>
                        <th>Answer</th>
                    </tr>
                    <?php
                    foreach (@$answers as $key => $value) {
                        echo "<tr><td>{$key}</td><td>{$value['Question']}</td><td>{$value['Dimension']}</td><td>{$value['answer']}</td></tr>";
                    }
                    ?>
                </table>
            </div>
            <?php
        } else {
            header("Location:http://localhost/mbti");
        }
        ?>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2"></script>
        <script src="js/blockUI.js"></script>
        <script type="text/javascript" src="js/ajaxForm.js"></script>
        <script src="js/script.js"></script>
    </body>
</html>