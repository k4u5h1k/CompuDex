<!DOCTYPE html>
<html>
    <head>
        <title>PHP</title>
    </head>
    <body>
        <?php
            // this is an example of PHP

            $message = "";
            $a = array();
            if(isset($_POST['sub'])) {

                for($i = 0; $i<2; $i++) {
                    array_push($a, $_POST['a'.(string)$i]);
                }
                $op = $_POST['op']; 

                $res;
                $valid=true;

                if($op==='+')
                    $res  = $a[0]+$a[1];
                else if($op==='-')
                    $res  = $a[0]-$a[1];
                else {
                    $valid = false;
                    echo '<script>alert("This operator is not included")</script>';
                }

                if($valid)
                {
                    $myfile = fopen("output.txt", "w") or die("Unable to open file!");
                    fwrite($myfile, $res);
                }
            }

            /* Usage
            *  1. Install PHP stack (LAMP, WAMP or XAMPP) on your system.
            *  2. Place this file in your www directory of server.
            *  3. Visit the link. 
            */
        ?>
        <form action="PHP.php" method="POST">
            <table>
                <tr>
                    <td>Enter number :</td>
                    <td><input type="number" name="a0" /></td>
                </tr>
                <tr>
                    <td>Enter number :</td>
                    <td><input type="number" name="a1" /></td>
                </tr>
                <tr>
                    <td>Enter operator :</td>
                    <td><input type="text" name="op" /></td>
                </tr>
            </table>
            <input type="submit" name="sub" />
        </form>
    </body>
</html>
