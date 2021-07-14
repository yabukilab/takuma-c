<?php
session_start(); // セッションを開始する．
if (!isset($_SESSION['username'])) { // ログインしていないなら，
  header('Location: ログイン.php');     // ログインページへ転送する．
}
$username = $_SESSION['username']; // ユーザ名を思い出す．

if (isset($_POST['submit1'], $_POST['submit2'],$_POST['submit3'],$_POST['submit4'])) {
  $submit = $_POST['submit1']; 
  $submit = $_POST['submit2']; 
  $submit = $_POST['submit3']; 
  $submit = $_POST['submit4']; 
  
  if ($submit == 'submit1') {     
    $_SESSION['submit1'] = true;      
    header('Location: 検索結果.php'); 
  } else if($submit == 'submit2'){ 
    $_SESSION['submit2'] = true;      
    header('Location: 検索結果.php'); 
  } else if($submit == 'submit3'){ 
    $_SESSION['submit3'] = true;      
    header('Location: 検索結果.php'); 
  }else{
    $_SESSION['submit4'] = true; 
    header('Location: 検索画面.php'); 
  }
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
  <p><?php echo $username;?>さん，ようこそ</p>
  <p>現在の気分を選択してください</p>
  <input type="image" src="submit1.png" width="224" height="224" alt="喜" value="喜" name="submit1">
  <input type="image" src="submit2.png" width="224" height="224" alt="怒" value="怒" name="submit2">
  <input type="image" src="submit3.png" width="224" height="224" alt="哀" value="哀" name="submit3">
  <input type="image" src="submit4.png" width="224" height="224" alt="楽" value="楽" name="submit4">

  <p><a href="ログアウト.php">ログアウト</a></p>
</body>
</html>