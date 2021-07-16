<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset='utf-8' />
  <link rel='stylesheet' href='style.css' />
  <title>メンバページ</title>
</head>
<body> 
    <h1>検索結果</h1>
<p><a href="検索画面.php">こちらから検索画面に戻れます．</a></p>
<table border=“1”>
<tr>
<th>musicID</th>
<th>musicname</th>
<th>arthist</th>
<th>musicURL</th>
</tr>
    <?php require 'db.php';
        $t = intval(date('H'));
        if(5 <= $t && $t <= 11 ){
            $NT = "朝";
            }else if(12 <= $t && $t <= 17){
                $NT = "昼";
                }else{
                    $NT = "夜";
                    }?>
        <?php $feeling = $_POST["q1"];
       $sql = 'SELECT * FROM music_data where feeling = "'.$feeling.'" and time = "'.$NT.'"';
       $prepare = $db->prepare($sql);
       $prepare->execute();
       $result = $prepare->fetchAll(PDO::FETCH_ASSOC); ?>
    <?php 
    foreach ($result as $row) {
        $musicID = h($row['musicID']);
        $musicname = h($row['musicname']);
        $arthist = h($row['arthist']);
        $musicURL = h($row['musicURL']);
        echo "<tr><td>{$musicID}</td><td>{$musicname}</td><td>{$arthist}</td><td>{$musicURL}</td></tr>";  
        echo "<br/>";
    }
    ?>
</table>
</body>
</html>