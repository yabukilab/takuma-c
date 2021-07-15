<?php
session_start(); // セッションを開始する．
$message = 'IDとパスワードを入力してください'; // デフォルトメッセージ
require 'db.php'; # 接続
if (isset($_POST['username'], $_POST['password'])) {
  $username = $_POST['username']; // フォームから送信されたユーザ名
  $password = $_POST['password']; // フォームから送信されたパスワード

 //データベースに問い合わせる
  //データベース接続設定
  $dbServer = '127.0.0.1';
  $dbName = 'mydb';
  $dsn = "mysql:host={$dbServer};dbname={$dbName};charset=utf8";
  $dbUser = 'testuser';
  $dbPass = 'pass';

  //データベースへの接続
  $db = new PDO($dsn, $dbUser, $dbPass);

  //検索実行
  $sql = 'select * from user_data where username = "'.$username.'"&& passwd = "'.$password.'"';

  $prepare = $db->prepare($sql);
  $prepare->execute();
  $result = $prepare->fetchAll(PDO::FETCH_ASSOC);
  $prepare->bindValue(':username', $username, PDO::PARAM_STR);   # 埋め込み1
  $prepare->bindValue(':passwd', $password, PDO::PARAM_STR);         # 埋め込み2

  if ($result != null) {
       session_regenerate_id();//セッションを作り直す．
       $_SESSION['username'] = $username; // ユーザ名を記憶する．

    if ($username == 'admin') {       // 管理者なら，
      $_SESSION['admin'] = true;      // 管理者フラグを立て，
      header('Location: admin.php');  // 管理者ページへ転送する．
    } else {                          // 管理者でないなら，
      header('Location: 検索画面.php'); // メンバページへ転送する．
    }
  }
  $message = 'ユーザ名またはパスワードが違います．';
} // ユーザ名とパスワードが送信されていないなら以下のフォームを表示する．
?>
<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset='utf-8' />
  <link rel='stylesheet' href='style.css' />
  <title>ログイン</title>
</head>
<body>
  <?php echo $message;?>
  <form action="ログイン.php" method="post">
    <ul style="list-style-type: none;">
      <li><input type="text" name="username" placeholder="ID" /></li>
      <li><input type="password" name="password" placeholder="パスワード" /></li>
      <li><input type="submit" value="ログイン" /></li>
      <li>新規登録は<a href="新規登録.html">こちら</a></li>
    </ul>
  </form>
</body>
</html>