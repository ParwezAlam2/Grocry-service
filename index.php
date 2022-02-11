<?php
require_once ('connect.php');

// Initialize the session
session_start();

?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Grocery Service</title>

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

    <!-- custom css file link  -->
    <link rel="stylesheet" href="css/style2.css">

</head>
<body>

<?php require('templates/header1.php') ?>
<div class="d-flex mt-4 mx-4">
        <h3><br><br>Welcome to the Grocery Service,
            <b><?php // check user login and output username
            if ($user_logged) {
                $user_id = ($_SESSION['id']);
                $select_sql = "SELECT name FROM `users` WHERE id='$user_id'";
                $result = mysqli_query($connection, $select_sql);
                if ($result->num_rows > 0) {
                    $row = mysqli_fetch_assoc($result);
                    echo $row["name"];
                    if (!$row["name"]) {
                         echo "Guest";
                    }
                }
            } else {
                echo "Guest";
            }
            ?></b>  
        </h3>
    </div>


<!-- home section starts  -->

<section class="home" id="home">

    <div class="image">
        <img src="images/home-img.png" alt="">
    </div>

    <div class="content">
        <span>fresh and organic</span>
        <h3>your daily need products</h3>
    </div>

</section>

<!-- home section ends -->

<!-- category section starts  -->

<section class="category" id="category">

    <h1 class="heading">shop by <span>category</span></h1>

    <div class="box-container">

        <div class="box">
            <h3>Vegitables</h3>
            <img src="images/category-1.png" alt="">
            <a href="start.php" class="btn">shop now</a>
        </div>
        <div class="box">
            <h3>Juice</h3>
            <img src="images/category-2.png" alt="">
            <a href="start2.php" class="btn">shop now</a>
        </div>
        <div class="box">
            <h3>Meat & Fish</h3>
            <img src="images/category-3.png" alt="">
            <a href="start3.php" class="btn">shop now</a>
        </div>
        <div class="box">
            <h3>Fruits</h3>
            <!--<p>upto 12% off</p>-->
            <img src="images/category-4.png" alt="">
            <a href="start4.php" class="btn">shop now</a>
        </div>

    </div>

</section>

<!-- category section ends -->


<!-- contact section starts  -->

<section class="contact" id="contact">
<?php
    if(isset($_POST) & !empty($_POST))
    {
        $name = ($_POST['name']);
        $email = ($_POST['email']);
        $phone = ($_POST['phone']);
        $subject = ($_POST['subject']);
        $message = ($_POST['message']);

    // Execute query
        $query = "INSERT INTO `contact_us` (name, email, phone, subject, message) VALUES ('$name', '$email', '$phone', '$subject', '$message')";
        $res = mysqli_query($connection, $query);
        if($res)
        { ?>
            <script>window.location.href='index.php'; alert("Message Sent.");</script>
 <?php  }
        else
        {
            $fmsg = "Failed to Insert data.";
            print_r($res->error_list);
        }
    }
?>
<?php if(isset($fmsg)){ ?><div class="alert alert-danger" role="alert"> <?php echo $fmsg; ?> </div><?php } ?>

    <h1 class="heading"> <span>contact</span> us </h1>

    <form method="post" enctype="multipart/form-data">

        <div class="inputBox">
            <input type="text" placeholder="Your Name" name="name" required/>
            <input type="email" placeholder="Your Email Id" name="email" required/>
        </div>

        <div class="inputBox">
            <input type="text" placeholder="Your Phone Number" name="phone" maxlength="10" minlength="10" required/>
            <input type="text" placeholder="Subject" name="subject" required/>
        </div>

        <textarea placeholder="Your Message" cols="30" rows="10" name="message" required/></textarea>

        <input type="submit" value="Send Message" class="btn">

    </form>

</section>

<!-- contact section ends -->

<!-- newsletter section starts  -->

<section class="newsletter">

    <h3>subscribe us for latest updates</h3>

    <form action="">
        <input class="box" type="email" placeholder="enter your email">
        <input type="submit" value="subscribe" class="btn">
    </form>

</section>

<!-- newsletter section ends -->

<!-- footer section starts  -->

<section class="footer">

    <div class="box-container">

        <div class="box">
            <a href="#" class="logo"><i class="fas fa-shopping-basket"></i>Grocery Service</a>
            <p>Discover the best Grocery Products in West Bengal</p>
            <div class="share">
                <a href="#" class="btn fab fa-facebook-f"></a>
                <a href="#" class="btn fab fa-twitter"></a>
                <a href="#" class="btn fab fa-instagram"></a>
                <a href="#" class="btn fab fa-linkedin"></a>
            </div>
        </div>
        
        <div class="box">
            <h3>our location</h3>
            <div class="links">
                <a href="#">Kolkata</a>
                <a href="#">Howrah</a>
                <a href="#">Siliguri</a>
            </div>
        </div>

        <div class="box">
            <h3>quick links</h3>
            <div class="links">
                <a href="index.php">home</a>
                <a href="#">category</a>
                <a href="#">contact</a>
            </div>
        </div>

    </div>

    <h1 class="credit"> Created by <span> SIP </span> | All Rights Reserved | Grocery Service </h1>

</section>

<!-- footer section ends -->

<!-- custom js file link  -->
<script src="js/script.js"></script>
    
</body>
</html>