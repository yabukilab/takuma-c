<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset='utf-8' />
  <link rel='stylesheet' href='style.css' />
  <title>メンバページ</title>
</head>
<body> 
    <?php
    $t = intval(date('H'));
    if(5 <= $t && $t <= 11 ){$NT = "朝";?>
    <?php}else{
        $NT = "夜";?>
        <?php}?>
    <?php print ($_POST["q1"]);?>
    <?php $feeling = $_POST["q1"];?>
    <?php require 'db.php'; ?># 接続
    //$db = new PDO($dsn, $dbUser, $dbPass);
    <?php $sql = 'SELECT * FROM music_data where feeling = "'.$feeling.'" and time = "'.$NT.'"';
    $prepare = $db->prepare($sql);
    $prepare->execute();
    $result = $prepare->fetchAll(PDO::FETCH_ASSOC);
    $prepare->bindValue(':name', $name, PDO::PARAM_STR); ?>
    <?php 
    foreach ($result as $r) {
        echo $r['musicID'].' '.$r['musicname'].' '.$r['arthist'].''.$r['musicURL'];  
        echo "<br/>";
    }?>
</body>
</html>