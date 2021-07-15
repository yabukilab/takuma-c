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
  <p>現在の気分を選択してください</p>
    <input type=”radio” name=”q1″ value=”喜”　required> 喜
    <input type=”radio” name=”q1″ value=”怒”> 怒
    <input type=”radio” name=”q1″ value=”哀”> 哀
    <input type=”radio” name=”q1″ value=”楽”> 楽
  <p><a href="ログアウト.php">ログアウト</a></p>
</body>
</html>