<?php
$dbServer = '127.0.0.1';
$dbName = 'mydb';
$dsn = "mysql:host={$dbServer};dbname={$dbName};charset=utf8";
$dbUser = 'test';
$dbPass = 'pass';

$feeling = $POST["気分"];

$db = new PDO($dsn, $dbUser, $dbPass);

$sql = "SELECT * FROM time WHERE hourfrom<=hour(now))-5 and hour(now))-5<hourto";
$sql = "SELECT * FROM music_data where feeling = "'.$feeling.'" and intB >= 10";
$prepare = $db->prepare($sql);
$prepare->execute();
$result = $prepare->fetchAll(PDO::FETCH_ASSOC);
$prepare->bindValue(':name', $name, PDO::PARAM_STR); 

foreach ($result as $r) {
  echo $r['musicID'].' '.$r['musicname'].' '.$r['arthist'].''.$r['musicURL'].';   

  echo "<br/>";
}
?>
