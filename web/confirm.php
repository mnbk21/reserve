<?php
require_once 'functions.php';

session_start();

?>
<!doctype html>
<html lang="ja">

  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <!-- Original CSS -->
    <link href="/css/style.css" rel="stylesheet">

    <title>予約内容確認</title>
  </head>

  <body>
    <header>SAMPLE SHOP</header>
    <h1>予約内容確認</h1>
    <table class="table">
      <tbody>
        <tr>
          <th scope="row">日時</th>
          <td><?= format_date($_SESSION['RESERVE']['reserve_date']) ?> <?= $_SESSION['RESERVE']['reserve_time'] ?></td>
        </tr>
        <tr>
          <th scope="row">人数</th>
          <td><?= $_SESSION['RESERVE']['reserve_num'] ?>名</td>
        </tr>
        <tr>
          <th scope="row">氏名</th>
          <td colspan="2"><?= $_SESSION['RESERVE']['name'] ?></td>
        </tr>
        <tr>
          <th scope="row">メールアドレス</th>
          <td colspan="2"><?= $_SESSION['RESERVE']['email'] ?></td>
        </tr>
        <tr>
          <th scope="row">電話番号</th>
          <td colspan="2"><?= $_SESSION['RESERVE']['tel'] ?></td>
        </tr>
        <tr>
          <th scope="row">備考</th>
          <td colspan="2"><?= nl2br($_SESSION['RESERVE']['comment']) ?></td>
        </tr>
      </tbody>
    </table>

    <div class="d-grid gap-2 mx-3">
      <a class="btn btn-primary rounded-pill" href="complete.php">予約確定</a>
      <a class="btn btn-secondary rounded-pill" href="/">戻る</a>
    </div>

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->
  </body>

</html>