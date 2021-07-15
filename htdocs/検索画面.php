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
  現在の気分を選択してください
    <input type="radio" name="q1" value="ki" required> 喜
    <input type="radio" name="q1" value="do"> 怒
    <input type="radio" name="q1" value="ai"> 哀
    <input type="radio" name="q1" value="raku"> 楽
  </from>
  <a href="ログアウト.php">ログアウト</a>
</body>
</html>