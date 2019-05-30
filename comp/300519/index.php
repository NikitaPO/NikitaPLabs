<style>
table {
    border: 1px solid black;
    width: 20%;
}

td, th {
    border: 1px solid black;
}
</style>
<?php
    header('Content-type: text/html; charset=utf-8' );
    header('Access-Control-Allow-Origin: *'); 
    // Попов Никита
    $dbloc = 'kodaktor.ru' ;
    $dbuser = $dbname = 'user1';
    $dbpass = 'Qwerty.123';
    $dsn = "mysql:host={$dbloc};dbname={$dbname}";
    $conn = new PDO($dsn, $dbuser, $dbpass);
    $conn -> exec('SET CHARACTER SET utf8');
    $sql = "SELECT id, name, comment FROM user1.nikitaP; WHERE id = {$id}";
    $result = $conn -> query($sql);
    echo '<h1>Вывод таблицы nikitaP из БД user1</h1>';
    echo '<table>';
    echo '<tr><th>Id</th><th>Name</th><th>Comment</th></tr>';
    while ($row = $result -> fetch(PDO::FETCH_OBJ)){
        echo '<tr>';
        echo '<td>';
        echo ($row -> id);
        echo '</td>';
        echo '<td>';
        echo ($row -> name);
        echo '</td>';
        echo '<td>';
        echo ($row -> comment);
        echo '</td>';
        echo '</tr>';
    }
    echo '</table>';
?>
