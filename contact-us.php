<?php
session_start();

include('includes/config.php');

if (empty($_SESSION['token'])) {
    $_SESSION['token'] = bin2hex(random_bytes(32));
}
if (isset($_POST['submit'])) {
    // Verifying CSRF Token
    if (!empty($_POST['csrftoken'])) {
        if (hash_equals($_SESSION['token'], $_POST['csrftoken'])) {
            $name = $_POST['name'];
            $email = $_POST['email'];
            $phone = $_POST['phone'];
            $ssn = $_POST['ssn'];
            $content = $_POST['content'];
            $complaintType = $_POST['complaintType'];

            $sqls = "INSERT INTO tblcontact (name, email, phone, ssn, contact_type, content) VALUES ('$name', '$email', '$phone', '$ssn', '$complaintType', '$content')";
            $query = mysqli_query($con, $sqls);

            if ($query) {
                echo "<script>alert('contact sent successfully .');</script>";
                unset($_SESSION['token']);
            } else {
                echo "<script>alert('Something went wrong. Please try again.');</script>";
            }
        }
    }
}
?>


<!DOCTYPE html>
<html lang="ar" dir="rtl">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>وزارة التعليم| تواصل معنا</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/modern-business.css" rel="stylesheet">

</head>

<body>

    <!-- Navigation -->
    <?php include('includes/header.php'); ?>
    <!-- Page Content -->
    <div class="container text-right" style="min-height: 80vh;">


        <h1 class="mt-4 mb-3"> تواصل مع الوزارة</h1>
        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="index.php">الرئيسية</a>
            </li>
            <li class="breadcrumb-item active">تواصل مع الوزارة</li>
        </ol>

        <div class="row" style="margin-top: 4%">
            <div class="col-md-8 text-right">
                <div class="card my-4 text-right">

                    <h5 class="card-header">تواصل معنا</h5>
                    <div class="card-body">
                        <form name="Comment" method="post" onsubmit="return validateForm()">
                            <input type="hidden" name="csrftoken"
                                value="<?php echo htmlentities($_SESSION['token']); ?>" />
                            <div class="form-group">
                                <input type="text" name="name" class="form-control" placeholder="ادخل اسمك بالكامل"
                                    required>
                            </div>
                            <div class="form-group">
                                <input type="email" name="email" class="form-control" placeholder="ادخل ايميلك"
                                    required>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <input type="text" name="phone" class="form-control" placeholder="ادخل هاتفك"
                                        required>
                                </div>
                                <div class="form-group col-md-6">
                                    <input type="text" name="ssn" class="form-control" placeholder="ادخل هويتك"
                                        required>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="complaintType">نوع الاتصال:</label>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="complaintType" id="complaint"
                                        value="شكوى" checked>
                                    <label class="form-check-label" style="margin-right: 2.5%">شكوى</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="complaintType" id="suggestion"
                                        value="اقتراح">
                                    <label class="form-check-label" style="margin-right: 2.5%">اقتراح</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="complaintType" id="inquiry"
                                        value="استفسار">
                                    <label class="form-check-label" style="margin-right: 2.5%">استفسار</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="complaintType" id="report"
                                        value="بلاغ">
                                    <label class="form-check-label" style="margin-right: 2.5%">بلاغ</label>
                                </div>
                            </div>
                            <div class="form-group">
                                <textarea class="form-control" name="content" rows="3" placeholder="الموضوع"
                                    required></textarea>
                            </div>
                            <button type="submit" class="btn btn-primary" name="submit">تأكيد</button>
                        </form>
                    </div>
                </div>


                <!---Comment Display Section --->

            </div>
        </div>


    </div>
    <!-- /.container -->

    <!-- Footer -->
    <?php include('includes/footer.php'); ?>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script>
    function validateForm() {
        var name = document.forms["Comment"]["name"].value;
        var email = document.forms["Comment"]["email"].value;
        var phone = document.forms["Comment"]["phone"].value;
        var ssn = document.forms["Comment"]["ssn"].value;
        var comment = document.forms["Comment"]["comment"].value;

        if (name === "" || email === "" || phone === "" || ssn === "" || comment === "") {
            alert("يرجى ملء جميع الحقول المطلوبة");
            return false;
        }

        if (phone.length !== 12) {
            alert("يجب أن يكون رقم الهاتف مكونًا من 11 رقمًا");
            return false;
        }

        if (ssn.length !== 15) {
            alert("يجب أن يكون الرقم القومي مكونًا من 15 رقمًا");
            return false;
        }

        var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!emailRegex.test(email)) {
            alert("الرجاء إدخال عنوان بريد إلكتروني صالح");
            return false;
        }

        return true;
    }
    </script>

</body>

</html>