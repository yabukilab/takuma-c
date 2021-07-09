<!DOCTYPE html>
<html lang="ja">
  <head>
    <meta charset="UTF-8" />
    <link rel='stylesheet' href='style.css' />
    <title>データの追加完了</title>
  </head>
  <body>

<?php
# 送信されたデータの取得
$name = $_POST['username'];  # ID
$p = $_POST['password'];  # パスワード
$p2 = $_POST['confirm'];  # パスワード


$name=htmlspecialchars($name,ENT_QUOTES,'UTF-8'); //文字列に変換（セキュリティ対策）
$p=htmlspecialchars($p,ENT_QUOTES,'UTF-8'); //文字列に変換（セキュリティ対策）
$p2=htmlspecialchars($p2,ENT_QUOTES,'UTF-8'); //文字列に変換（セキュリティ対策）

require 'db.php'; # 接続
$sql = 'insert into  log_data ( username, passwd) values (:name, :p)';
$prepare = $db->prepare($sql); # 準備

$prepare->bindValue(':name', $name, PDO::PARAM_STR);   # 埋め込み1
$prepare->bindValue(':p', $p, PDO::PARAM_STR);         # 埋め込み2

//$staff_pass、$staff_pass2が一致しなければ、エラーメッセージを表示する
if($p!=$p2){ //もしパスワード1とパスワード2の値が異なるなら
  print 'パスワードが一致しません。<br />';
  else {
  $prepare->execute(); # 実行]
  ?>

    <p>登録が完了しました<a href="ログイン.php">こちら</a>からログインし直して下さい</p>
  }

  </body>
</html>