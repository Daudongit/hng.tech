<?php
    $interns = require('partials/interns.php');
    $hotelNg = $interns['hotelng'];
    //$partners = $interns['partners'];
    $partners = array_slice(require('partials/partners.php'),0,10); 
?>

<html>
	<?php include 'partials/header.php';?>
	<body class=" pi">
		<?php include 'partials/navbar.php';?>
		<div class="container">
			<header class="pi-header">
				<h1 class="h1">Our Interns and the Impact They Have Made</h1>

			<!-- <div class="container"> -->
			</header>
			<section class="row pi-banner">
				<div class="col-md-9">
					<div class="pi-block pi-hotels">
						<img src="../app/img/<?php echo $hotelNg['banner_url'];?>" alt="hotels.ng banner" />
					</div>
				</div>

				<article class="col-md-3">
					<h3>Hotels.ng</h3>
					<p>We are an online travel agency specialising in hotel bookings within Nigeria. We help customers book hotel rooms online, provide comprehensive help and support to our clients and make the hotel booking process smooth and easy.</p>
				</article>

				<div class="col-md-12">
					<div class="pi-interns">
                        <?php  foreach($hotelNg['interns'] as $hngIntern):?>
                            <div class="pi-intern">
                                <figure>
                                    <img class="" src="../app/img/interns/<?php echo $hngIntern['profile_image'];?>" alt="Ikechukwu Nwakanma"/>
                                </figure>
                                <article class="">
                                    <p class="pi-intern-name"><?php echo $hngIntern['name'];?></p>
                                    <p><?php echo $hngIntern['stack'];?></p>
                                    <p><?php echo $hngIntern['intership'];?></p>
                                </article>
                            </div>
                        <?php endforeach;?>
					</div>
				</div>
			</section>

			<!-- partners -->
			<section class="pi-partners">
                <?php  foreach($partners as $key=>$partner):?>
                    <?php if(($key+1)%2 != 0 ):?>
                        <div class="pi-partner">
                            <div class="pi-partner-details">
                                <div class="pi-block pi-flutterwave">
                                    <?php $banner_url = $partner['banner_url'] ?:'flutterwave.png';?>
                                    <!-- <img src="../app/img/interns/<?php //echo $banner_url;?>" alt="hotels.ng banner" /> -->
                                </div>
                                <article>
                                    <h3><?php echo $partner['name'];?></h3>
                                    <p><?php echo $partner['about'];?></p>
                                </article>
                            </div>
                            <div class="pi-partner-interns">
                                <?php  foreach($partner['interns'] as $partnerIntern):?>
                                    <div class="pi-intern">
                                        <figure>
                                            <?php 
                                                $profile_image = strpos($partnerIntern['profile_image'],'drive.google') 
                                                === false?$partnerIntern['profile_image']:'../app/img/pi-intern.png';
                                            ?>
                                            <img class="" src="<?php echo $profile_image;?>" alt="interns image"/>
                                        </figure>
                                        <article class="">
                                            <p class="pi-intern-name"><?php echo $partnerIntern['name'];?></p>
                                            <p><?php echo $partnerIntern['stack'];?></p>
                                            <p><?php echo $partnerIntern['internship'];?></p>
                                        </article>
                                    </div>
                                <?php endforeach;?>
                            </div>
                        </div>
                    <?php endif;?>
                    <?php if(($key+1)%2 == 0 ):?>
                        <div class="pi-partner">
                            <div class="pi-partner-interns">
                                <?php  foreach($partner['interns'] as $partnerIntern):?>
                                    <div class="pi-intern">
                                        <figure>
                                            <?php 
                                                $profile_image = strpos($partnerIntern['profile_image'],'drive.google') 
                                                === false?$partnerIntern['profile_image']:'../app/img/pi-intern.png';
                                            ?>
                                            <img class="" src="<?php echo $profile_image;?>" alt="interns image"/>
                                        </figure>
                                        <article class="">
                                            <p class="pi-intern-name"><?php echo $partnerIntern['name'];?></p>
                                            <p><?php echo $partnerIntern['stack'];?></p>
                                            <p><?php echo $partnerIntern['internship'];?></p>
                                        </article>
                                    </div>
                                <?php endforeach;?>
                            </div>
                            <div class="pi-partner-details">
                                <div class="pi-block pi-paystack">
                                    <?php $banner_url = $partner['banner_url'] ?:'paystack.png';?>
                                    <!-- <img src="../app/img/interns/<?php //echo $banner_url;?>" alt="hotels.ng banner" /> -->
                                </div>
                                <article>
                                    <h3><?php echo $partner['name'];?></h3>
                                    <p><?php echo $partner['about'];?></p>
                                </article>
                            </div>
                        </div>
                    <?php endif;?>
                <?php endforeach;?>
			<!-- </div> -->
            </section>
        </div>
        
	</body>
	<?php include 'partials/footer.php';?>
</html>
