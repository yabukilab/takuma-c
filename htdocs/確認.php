<!DOCTYPE html>
<html lang="ja">
  <head>
    <meta charset="UTF-8" />
    <link rel='stylesheet' href='style.css' />
    <title>確認</title>
  </head>
  <body>

<form method="post" action="delete-item.php">

<table border=“1”>
<tr>
<th>削除</th>
<th>ID</th>
<th>商品名</th>
<th>価格</th>
<th>在庫</th>
</tr>

<?php
require 'db.php';                                # 接続
$sql = 'SELECT * FROM log_data';              # SQL文
$prepare = $db->prepare($sql);                   # 準備
$prepare->execute();                             # 実行
$result = $prepare->fetchAll(PDO::FETCH_ASSOC);  # 結果の取得
$num = 0;                                        # DBに登録されているデータ数

foreach ($result as $row) {
  $id = h($row['id']);
  $name = h($row['username']);
  $p = h($row['passwd']);
  echo "<tr><td><input type=\"checkbox\" name=\"chk[]\" value={$id} />
         </td><td>{$id}</td><td>{$name}</td><td>{$p}</td><td>{$s}</td></tr> ";
  $num++;
}
echo "<input type=\"hidden\" name=\"num\" value={$num}/>";
?>
</table>

<input type="submit" value="削除" />
<input type="reset" value="取り消し" />
</form>

  </body>
</html>
