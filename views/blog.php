<?php require('includes/config.php');
include 'partials/header.php';
include 'partials/navbar.php';
 ?>
 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>HNG Blog</title>
    <link rel="stylesheet" href="..app/css/normalize.css">
    <link rel="stylesheet" href="../app/css/main.css">

</head>
<body>

	<div id="wrapper">

		<h3>HNG Blog</h3>
		<button style="position: absolute; right:80px; top:109px; border-radius: 5px; border-style:none; background-color: #6666cc"><a href="views/admin/login.php" style="color: white" target="blank">Post to Blog</a></button>
		
		<hr />

		<?php
			try {

				$stmt = $db->query('SELECT blog_posts.postID, blog_posts.postTitle, blog_posts.postDesc, blog_posts.postDate, blog_members.username FROM blog_posts, blog_members WHERE blog_posts.memberID = blog_members.memberID ORDER BY postID DESC');
				while($row = $stmt->fetch()){
					
					echo '<div>';
						echo '<h1><a href="views/viewpost.php?id='.$row['postID'].'">'.$row['postTitle'].'</a></h1>';
						echo '<p style="color:#990033">Posted on '.date('jS M Y', strtotime($row['postDate']));
						echo '<p>  By '.$row['username'].'</p>';
						echo '<p style = "text-align:justify">'.$row['postDesc'].'</p>';				
						echo '<p><a href="views/viewpost.php?id='.$row['postID'].'">Read More</a></p>';				
					echo '</div>';

				}

			} catch(PDOException $e) {
			    echo $e->getMessage();
			}
		?>

	</div>
	<?php include 'partials/footer.php'?>;
</body>
</html>