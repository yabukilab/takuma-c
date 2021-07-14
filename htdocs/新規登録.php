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
$name = $_POST['username'];  # 商品名
$p = $_POST['password'];  # 価格
require 'db.php'; # 接続
$sql = 'insert into  log_data ( username, passwd ) values (:name, :p)';
$prepare = $db->prepare($sql); # 準備

$prepare->bindValue(':name', $name, PDO::PARAM_STR);   # 埋め込み1
$prepare->bindValue(':p', $p, PDO::PARAM_STR);         # 埋め込み2

$prepare->execute(); # 実行
?>

    <p><a href="ログイン.php">ログインし直してください</a></p>
  </body>
</html>