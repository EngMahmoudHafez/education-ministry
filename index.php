<?php
session_start();
include('includes/config.php');

?>

<!DOCTYPE html>
<html lang="ar" dir="rtl">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>News Portal | Home Page</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/modern-business.css" rel="stylesheet">
  <style>
    section ul {
      text-align: center;
      color: aliceblue;
    }

    section h2 {
      text-align: center;
      color: blue;
      margin: 3px;
    }

    section ul {
      list-style-type: none;
      padding: 0;
    }

    section ul li {
      cursor: pointer;
      margin: 10px;
      padding: 10px;
      background-color: #585757;
      border-radius: 5px;
    }

    section ul li ul li {

      background-color: #2fab99;
      text-decoration: none;

      color: black;

    }

    section ul li ul li a {

      text-decoration: none;
      font-size: large;
      color: black;

    }

    section ul li ul {
      display: none;
      background-color: #585757;
    }

    section ul li.active ul {
      display: block;
    }

    section ul li:hover {
      background-color: #b3a48c;
    }
  </style>
</head>

<body>

  <!-- Navigation -->
  <?php include('includes/header.php'); ?>


  <!-- Page Content -->
  <div class="container">

    <section>

      <h2>من أنت !!</h2>
      <ul>
        <li data-tooltip="طالب">
          <h4>طالب</h4>
          <ul>
            <li><a href="/ar/education/generaleducation/Pages/SchoolHealth.aspx">
                <div>
                  الصحة المدرسية
                </div>
              </a></li>
            <li><a href="/ar/education/generaleducation/Pages/academicCalendar.aspx">
                <div>
                  التقويم الدراسي
                </div>
              </a></li>
            <li><a href="/ar/education/educationinksa/Pages/Registration.aspx">
                <div>
                  تسجيل طالب جديد
                </div>
              </a></li>
            <li><a href="/ar/education/generaleducation/Pages/PeopleWithSpecialNeeds.aspx">
                <div>
                  الأشخاص ذوو الإعاقة
                </div>
              </a></li>
          </ul>
        </li>
        <li data-tooltip="طالب جامعي">
          <h4>طالب جامعي</h4>
          <ul>
            <li><a href="/ar/education/highereducation/Pages/UniversitiesList.aspx">
                <div>
                  الجامعات والكليات
                </div>
              </a></li>
            <li><a href="https://ksp.moe.gov.sa/">
                <div>الابتعاث</div>
              </a></li>
            <li><a href="/ar/education/ResidentsAndvisitors/Pages/PublicUniversitiesScholarships.aspx">
                <div>
                  المنح الدراسية
                </div>
              </a></li>
            <li><a href="/ar/education/highereducation/Pages/PeopleWithSpecialNeeds.aspx">
                <div>
                  الأشخاص ذوو الإعاقة
                </div>
              </a></li>
          </ul>
        </li>
        <li data-tooltip="معلم/ إدراي">
          <h4>معلم/ إدراي</h4>
          <ul>
            <li><a href="https://noor.moe.gov.sa/Noor/Login.aspx">
                <div>نظام نور</div>
              </a></li>
            <li><a href="https://sshr.moe.gov.sa/">
                <div>نظام فارس</div>
              </a></li>
            <li><a href="https://schools.madrasati.sa/">
                <div>منصة مدرستي</div>
              </a></li>
            <li><a href="/ar/knowledgecenter/eservices/Pages/FreeServicesandPrograms.aspx">
                <div>
                  الخدمات والبرامج المجانية
                </div>
              </a></li>
          </ul>
        </li>
        <li data-tooltip="باحث">
          <h4>باحث</h4>
          <ul>
            <li><a href="/ar/knowledgecenter/dataandstats/Pages/opendata.aspx">
                <div>
                  البيانات المفتوحة
                </div>
              </a></li>
            <li><a href="/ar/knowledgecenter/dataandstats/Pages/educationindicators.aspx">
                <div>
                  مؤشرات التعليم
                </div>
              </a></li>
            <li><a href="/ar/knowledgecenter/eservices/Pages/eservicesstsats.aspx">
                <div>
                  احصائيات الخدمات
                </div>
              </a></li>
            <li><a href="https://sdl.edu.sa/SDLPortal/Publishers.aspx">
                <div>
                  المكتبة
                  الرقمية
                </div>
              </a></li>
          </ul>
        </li>
        <li data-tooltip="مستثمر">
          <h4>مستثمر</h4>
          <ul>
            <li><a href="/ar/knowledgecenter/DecisionsAndPartnerships/Pages/BeAPartner.aspx">
                <div>
                  كن شريك الوزارة
                </div>
              </a></li>
            <li><a href="/ar/knowledgecenter/projectsinitiatives/Pages/completedprojects.aspx">
                <div>
                  المشاريع
                </div>
              </a></li>
            <li><a href="/ar/knowledgecenter/projectsinitiatives/Pages/SuppliersPortal.aspx">
                <div>
                  بوابة الموردين
                </div>
              </a></li>
            <li><a href="/ar/knowledgecenter/projectsinitiatives/Pages/InvestorGuide.aspx">
                <div>
                  دليل المستثمر
                </div>
              </a></li>
          </ul>
        </li>
      </ul>
    </section>

    <h2 style="text-align: center;
      color: blue;
      margin: 3px;">آخر اخبار الوزارة</h2>
    <div class="row" style="margin-top: 4%">
      <!-- Blog Entries Column -->
      <div class="col-md-8">

        <!-- Blog Post -->
        <?php
        if (isset($_GET['pageno'])) {
          $pageno = $_GET['pageno'];
        } else {
          $pageno = 1;
        }
        $no_of_records_per_page = 8;
        $offset = ($pageno - 1) * $no_of_records_per_page;


        $total_pages_sql = "SELECT COUNT(*) FROM tblposts";
        $result = mysqli_query($con, $total_pages_sql);
        $total_rows = mysqli_fetch_array($result)[0];
        $total_pages = ceil($total_rows / $no_of_records_per_page);


        $query = mysqli_query($con, "select tblposts.id as pid,tblposts.PostTitle as posttitle,tblposts.PostImage,tblcategory.CategoryName as category,tblcategory.id as cid,tblsubcategory.Subcategory as subcategory,tblposts.PostDetails as postdetails,tblposts.PostingDate as postingdate,tblposts.PostUrl as url from tblposts left join tblcategory on tblcategory.id=tblposts.CategoryId left join  tblsubcategory on  tblsubcategory.SubCategoryId=tblposts.SubCategoryId where tblposts.Is_Active=1 order by tblposts.id desc  LIMIT $offset, $no_of_records_per_page");
        while ($row = mysqli_fetch_array($query)) {
        ?>

          <div class="card mb-4 text-right">
            <img class="card-img-top" src="admin/postimages/<?php echo htmlentities($row['PostImage']); ?>" alt="<?php echo htmlentities($row['posttitle']); ?>">
            <div class="card-body">
              <h2 class="card-title"><?php echo htmlentities($row['posttitle']); ?></h2>
              <p>
                <!--category-->
                <a class="badge bg-secondary text-decoration-none link-light" href="category.php?catid=<?php echo htmlentities($row['cid']) ?>" style="color:#fff"><?php echo htmlentities($row['category']); ?></a>
                <!--Subcategory--->
                <a class="badge bg-secondary text-decoration-none link-light" style="color:#fff"><?php echo htmlentities($row['subcategory']); ?></a>
              </p>

              <a href="news-details.php?nid=<?php echo htmlentities($row['pid']) ?>" class="btn btn-primary">Read More &rarr;</a>
            </div>
            <div class="card-footer text-muted">
              Posted on <?php echo htmlentities($row['postingdate']); ?>

            </div>
          </div>
        <?php } ?>




        <!-- Pagination -->


        <ul class="pagination justify-content-center mb-4">
          <li class="page-item"><a href="?pageno=1" class="page-link">First</a></li>
          <li class="<?php if ($pageno <= 1) {
                        echo 'disabled';
                      } ?> page-item">
            <a href="<?php if ($pageno <= 1) {
                        echo '#';
                      } else {
                        echo "?pageno=" . ($pageno - 1);
                      } ?>" class="page-link">Prev</a>
          </li>
          <li class="<?php if ($pageno >= $total_pages) {
                        echo 'disabled';
                      } ?> page-item">
            <a href="<?php if ($pageno >= $total_pages) {
                        echo '#';
                      } else {
                        echo "?pageno=" . ($pageno + 1);
                      } ?> " class="page-link">Next</a>
          </li>
          <li class="page-item"><a href="?pageno=<?php echo $total_pages; ?>" class="page-link">Last</a></li>
        </ul>

      </div>

      <!-- Sidebar Widgets Column -->
      <?php include('includes/sidebar_index.php'); ?>
    </div>
    <!-- /.row -->

  </div>
  <!-- /.container -->

  <!-- Footer -->
  <?php include('includes/footer.php'); ?>


  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script>
    document.addEventListener('DOMContentLoaded', function() {
      var listItems = document.querySelectorAll('ul li');

      listItems.forEach(function(item) {
        item.addEventListener('click', function() {
          listItems.forEach(function(li) {
            li.classList.remove('active');
          });
          this.classList.add('active');
        });
      });
    });
  </script>

  </head>
</body>

</html>