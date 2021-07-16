<?php
session_start();   // セッションを開始する．
session_destroy(); // セッションを破棄する．
?>
<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset='utf-8' />
  <link rel='stylesheet' href='style.css' />
  <title>ログアウト</title>
</head>
<body>
  <p>ログアウトしました．</p>
  <p><a href="index.php">ログインページへ</a></p>
</body>
</html>