<?php
# 送信されたデータの取得
$name = $_POST['username'];  # ID
$p = $_POST['password'];  # パスワード
$p2 = $_POST['password_conf'];  # パスワード

$err =[]
$name=htmlspecialchars($name,ENT_QUOTES,'UTF-8'); //文字列に変換（セキュリティ対策）
$p=htmlspecialchars($p,ENT_QUOTES,'UTF-8'); //文字列に変換（セキュリティ対策）
$p2=htmlspecialchars($p2,ENT_QUOTES,'UTF-8'); //文字列に変換（セキュリティ対策）

require 'db.php'; # 接続
$sql = 'insert into  log_data ( username, passwd) values (:name, :p)';
$prepare = $db->prepare($sql); # 準備

$prepare->bindValue(':name', $name, PDO::PARAM_STR);   # 埋め込み1
$prepare->bindValue(':p', $p, PDO::PARAM_STR);         # 埋め込み2

$p2 = filter_input(INPUT_POST, "password_conf");
if($p !== $p2){
  $err[] =　"確認用のパスワードと異なっています"
}
if (count($err) === 0) {
  // ユーザを登録する処理
  $hasCreated = UserLogic::createUser($_POST);
  
  if(!$hasCreated) {
    $err[] = '登録に失敗しました';
  }


  
}
?>
<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <link rel="stylesheet" href="style.css" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>ユーザデータの追加完了</title>
</head>
<body>
<?php if (count($err) > 0) : ?>
  <?php foreach($err as $e) : ?>
    <p><?php echo $e ?></p>
  <?php endforeach ?>
<?php else : ?>
  <p>ユーザ登録が完了しました。</p>
<?php endif ?>
<a href="./signup_form.php">戻る</a>
  
</body>
</html>