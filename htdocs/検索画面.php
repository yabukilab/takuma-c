<?php
session_start(); // セッションを開始する．
if (!isset($_SESSION['username'])) { // ログインしていないなら，
  header('Location: ログイン.php');     // ログインページへ転送する．
  $username = $_SESSION['username']; // ユーザ名を思い出す．
} // ユーザ名とパスワードが送信されていないなら以下のフォームを表示する．



?>
<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset='utf-8' />
  <link rel='stylesheet' href='style.css' />
  <title>メンバページ</title>
</head>
<body> 
  <form method="post" action="検索結果.php">
  現在の気分を選択してください<br>
    <input type="radio" name="q1" value="喜" style="transform:scale(3.0);" required> <img src="submit1.gif" alt="喜" title="喜">
    <input type="radio" name="q1" value="怒" style="transform:scale(3.0);"> <img src="submit2.gif" alt="怒" title="怒"><br>
    <input type="radio" name="q1" value="哀" style="transform:scale(3.0);"> <img src="submit3.gif" alt="哀" title="哀">
    <input type="radio" name="q1" value="楽" style="transform:scale(3.0);"> <img src="submit4.gif" alt="楽" title="楽"><br>
    <input type="submit" value="検索" />
  </from>
  <a href="ログアウト.php">ログアウト</a>
</body>
</html>