<?php
session_start(); // セッションを開始する．
if (!isset($_SESSION['username'])) { // ログインしていないなら，
  header('Location: ログイン.php');     // ログインページへ転送する．
}
$username = $_SESSION['username']; // ユーザ名を思い出す．
?>
<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset='utf-8' />
  <link rel='stylesheet' href='style.css' />
  <title>メンバページ</title>
</head>
<body>
  <p><?php echo $username;?>さん，ようこそ</p>
  <p>現在の気分を選択してください</p>
  <input type="image" src="btn_send1.png" width="224" height="224" alt="喜" value="喜" name="submit1">
  <input type="image" src="btn_send2.png" width="224" height="224" alt="怒" value="怒" name="submit2">
  <input type="image" src="btn_send3.png" width="224" height="224" alt="哀" value="哀" name="submit3">
  <input type="image" src="btn_send4.png" width="224" height="224" alt="楽" value="楽" name="submit4">

  <p><a href="ログアウト.php">ログアウト</a></p>
</body>
</html>