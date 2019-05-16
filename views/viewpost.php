<?php require('includes/config.php'); 
include 'partials/header.php';
include 'partials/navbar.php';

$stmt = $db->prepare('SELECT blog_posts.postID, blog_posts.postTitle, blog_posts.postDesc, blog_posts.postCont, blog_posts.postDate, blog_members.username FROM blog_posts, blog_members WHERE blog_posts.memberID = blog_members.memberID AND postID =:postID ORDER BY postID DESC');
$stmt->execute(array(':postID' => $_GET['id']));
$row = $stmt->fetch();

//if post does not exists redirect user.
if($row['postID'] == ''){
	header('Location: blog');
	exit;
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>HNG Blog - <?php echo $row['postTitle'];?></title>
    <link rel="stylesheet" href="style/normalize.css">
    <link rel="stylesheet" href="../app/css/main.css">
</head>
<body>
	<div id="wrapper">
		<!-- <a href= "../blog" style="color: #990066; position: absolute; right:80px; top:109px;">Return back</a> -->
		
		<div style="display: flex; justify-content: flex-start; align-items: center">
			<div class="auth_img">
				<img height="50px" width="50px" src="../app/img/Rectangle 2.png" alt="">
			</div>
			<div >
				<h2 style="margin: 0"><?php echo $row['username']?></h2>
				<p style="margin-top: 0">Posted on <?php echo date('jS M Y', strtotime($row['postDate'])) ?></p>
			</div>

		</div>

		<?php	
			echo '<div>';
				echo '<a style = "text-align: justify">'.$row['postCont'].'</a>';
			echo '</div>';
		?>

		<div style="display:flex; justify-content:center; margin-bottom:20px">
			<div class="post-auth">
				<img src="../app/img/Rectangle 2.png" alt="">
				written by
				<span style="color:#222; font-weight:600; margin:0 5px"> <?php echo $row['username']?> </span> in
				<span style="color:#1fbdef; font-weight:600; margin:0 5px"> Design </span>
			</div>
		</div>
		
	</div>
	

	<div class="main-recommended" style="background: #f1f1f1; padding: 30px 0">
		<div id="wrapper">
			<div class="top-recommended">
				<h1>Recommended</h1>
				<a href="<?php echo $blog ?>">
					<span>view all blog post</span>
					<span class="fa fa-chevron-right"></span>
				</a>
			</div>

			<div class="row">
  				<div class="col-sm-4">
					<div class="card more-post-card">
						<img class="card-img-top" height="100%" width="100%"  src="../app/img/Rectangle 2.png" alt="Card image cap">
						<div class="card-body">
							<h3>Category</h3>
							<h1>The main title here for 2018 HNG</h1>
							<div class="card-auth">
								<img src="../app/img/Rectangle 2.png" alt="">
								by
								<span style="color:#1fbdef; font-weight:600">Sauce code </span>|
								<span> 4 days ago</span>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="card more-post-card">
						<img class="card-img-top" height="100%" width="100%"  src="../app/img/Rectangle 2.png" alt="Card image cap">
						<div class="card-body">
							<h3>Category</h3>
							<h1>The main title here for 2018 HNG</h1>
							<div class="card-auth">
								<img src="../app/img/Rectangle 2.png" alt="">
								by
								<span style="color:#1fbdef; font-weight:600">Sauce code </span>|
								<span> 4 days ago</span>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="card more-post-card">
						<img class="card-img-top" height="100%" width="100%"  src="../app/img/Rectangle 2.png" alt="Card image cap">
						<div class="card-body">
							<h3>Category</h3>
							<h1>The main title here for 2018 HNG</h1>
							<div class="card-auth">
								<img src="../app/img/Rectangle 2.png" alt="">
								by
								<span style="color:#1fbdef; font-weight:600">Sauce code </span>|
								<span> 4 days ago</span>
							</div>
						</div>
					</div>
				</div>
				
			</div>
		</div>
	</div>

</body>

<?php include 'partials/footer.php'?>;
</html>