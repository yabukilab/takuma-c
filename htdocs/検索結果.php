<?php
$t = echo date('G')."<br/>\n";

if(5 =< $t =< 11 ){
    $NT = "朝";
}else if(12 =< $t <= 17 ){
    $NT = "昼";
}else{
    $NT = "夜";
}
$feeling = $POST["q1"];

$db = new PDO($dsn, $dbUser, $dbPass);

$sql = "SELECT * FROM music_data where feeling = "'.$feeling.'";
$prepare = $db->prepare($sql);
$prepare->execute();
$result = $prepare->fetchAll(PDO::FETCH_ASSOC);
$prepare->bindValue(':name', $name, PDO::PARAM_STR); 

foreach ($result as $r) {
  echo $r['musicID'].' '.$r['musicname'].' '.$r['arthist'].''.$r['musicURL'].';   

  echo "<br/>";
}
?>
