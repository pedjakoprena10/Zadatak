<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Kalkulator</title>
</head>
<body>
    <table style="border:2px solid; background-color:yellow;">
    <tr> <td> <h1>Kalkulator</h1>


 <form action="kalkulator.php" method="POST">
     Broj 1: <input type="number" name="br1" value="<?= $_POST['br1'] ?>"> <br> <br>
     Broj 2: <input type="number" name="br2" value="<?= $_POST['br2'] ?>"> <br> <br>
     <input type="submit" value="+" name="racun">
     <input type="submit" value="-" name="racun">
     <input type="submit" value="*" name="racun">
     <input type="submit" value="%" name="racun">

</form>
<tr> <td> </table>
<?php
 $br1 = $_POST['br1'];
 $br2 = $_POST['br2'];
 $racun = $_POST['racun'];
 echo ' <br> Rezultat: ' . izracunaj($br1, $br2, $racun);


 function izracunaj($br1, $br2, $racun) {
 switch ($racun) {
    case '+':
        return $br1 + $br2;
    case '-':
        return $br1 - $br2;
    case '*':
        return $br1 * $br2;
    case '%':
        return $br1 / $br2;
    default:
        return 0;
}
 }

?>
</body>
</html>