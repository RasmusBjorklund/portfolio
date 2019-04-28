<?php

  function dbConnect()
  {
		$dsn = "mysql:dbname=rasmusbjorklund;host=localhost;";

    $username = 'root';

    $password = '';

    $db = new PDO($dsn, $username, $password);

    return $db;
  }

  function listCourses($db)
  {
    $sql = 'SELECT * FROM courses ORDER BY id';
    $stmt = $db->prepare($sql);
    $stmt->execute();
    $courses = $stmt->fetchAll();
    $stmt = null;

    return $courses;
  }

  function printCourses($courses) {
    ?>
    <div class="row">
    <?php
    $i = 0;
    foreach ($courses as $course) {
      ?>
      <div class="col-sm-6 mt-3">
        <div class="card">
          <div class="card-body">
            <h5 class="card-title"><?php echo( $course["name"] ); ?></h5>
            <p class="card-text"><?php echo $course["code"] . ", " . $course["hp"] . "HP" ?></p>
            <a href="<?php echo $course["link"] ?>" class="btn btn-primary">Go to course</a>
          </div>
        </div>
      </div>
    	<?php
        $i++;
        if ($i % 4 == 0) {
          echo '</div><div class="row">';
        }
      }
    }
    ?>
