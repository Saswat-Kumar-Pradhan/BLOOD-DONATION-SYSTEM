<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" >
<link rel="stylesheet" href="css/FAQstyle.css">
<link rel="stylesheet" href="css/navbar.css">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="#"><img src="images/logo.png" alt="" class="logo"></a>
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="index.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Request</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Certificate</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="#">FAQ</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="adminlogin.jsp"><img src="images/clipart153157.png" alt="" class="profile"></a>
                </li>
            </ul>
        </div>
    </nav>
    <div class="row">
        <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">
        </div>
        <div class="col-lg-5 col-md-5 col-sm-8 col-xs-10">
            <div class="heading">FAQ</div>
            <div class="accordion accordion-custom" id="accordionExample">
                <div class="accordion-item">
                    <h2 class="accordion-header" id="headingOne">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
                      <b>Who are eligible to donate blood?</b>
                    </button>
                    </h2>
                    <div id="collapseOne" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                        <div class="accordion-body">
                            <strong>Weight : </strong>The Donor Should not be less than 45 Kilograms.<br>
                            <strong>Age : </strong>Donor should be in the age group of 18 to 65 years.<br>
                            <strong>Infection : </strong>Should NOT have Hepatitis B, C, Tuberculosis, Leprosy, HIV.<br>
                            <strong>Child birth : </strong>Should have delivered 1 year ago and stopped lactation.<br>
                            <strong>Pulse : </strong>Temperature and Pulse of the donor shall be normal.
                        </div>
                    </div>
                </div>
                <div class="accordion-item">
                    <h2 class="accordion-header" id="headingTwo">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                            <b>Who Cannot donate blood?</b>
                    </button>
                    </h2>
                    <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
                        <div class="accordion-body">
                            You must be in good health at the time you donate. You cannot donate if you have a cold, flu, sore throat, cold sore, stomach bug or any other infection. If you have recently had a tattoo or body piercing you cannot donate for 6 months from the date of
                            the procedure.
                        </div>
                    </div>
                </div>
                <div class="accordion-item">
                    <h2 class="accordion-header" id="headingThree">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                      <b>Should I donate blood or platelets?</b>>
                    </button>
                    </h2>
                    <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                        <div class="accordion-body">
                            All blood types, except for type O negative and type B negative, are encouraged to try platelet donation. Type O negative and type B negative can make the most impact for patients in need by continuing to give whole blood or a Power Red donation. If you
                            are type AB you can make the most impact by donating plasma.
                        </div>
                    </div>
                </div>
                <div class="accordion-item">
                    <h2 class="accordion-header" id="headingFour">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                      <b>Is giving blood good for you?</b>
                    </button>
                    </h2>
                    <div id="collapseFour" class="accordion-collapse collapse" aria-labelledby="headingFour" data-bs-parent="#accordionExample">
                        <div class="accordion-body">
                            Is giving blood good for you? One blood donation can save up to three lives, according to DeSimone. People usually donate because it feels good to help others, and altruism and volunteering have been linked to positive health outcomes, including a lower
                            risk for depression and greater longevity.
                        </div>
                    </div>
                </div>
                <div class="accordion-item">
                    <h2 class="accordion-header" id="headingFive">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
                      <b>What To Eat And Drink After Donating Blood?</b>
                    </button>
                    </h2>
                    <div id="collapseFive" class="accordion-collapse collapse" aria-labelledby="headingFive" data-bs-parent="#accordionExample">
                        <div class="accordion-body">
                            <strong>1.</strong>Drink Plenty Of Water.<br>
                            <strong>2.</strong>Eat Iron-rich Foods.<br>
                            <strong>3.</strong>Eat Food Rich In Vitamin C.<br>
                        </div>
                    </div>
                </div>
                <div class="accordion-item">
                    <h2 class="accordion-header" id="headingSix">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSix" aria-expanded="false" aria-controls="collapseSix">
                      <b>Is blood donation painful?</b>
                    </button>
                    </h2>
                    <div id="collapseSix" class="accordion-collapse collapse" aria-labelledby="headingSix" data-bs-parent="#accordionExample">
                        <div class="accordion-body">
                            No, usually you will not feel high levels of pain. It is a simple prick of the needle that will hurt for a little while at the time of insertion. You won’t even feel anything after a few minutes or at the time of removing the needle. The blood donation
                            process is mostly pain-free.
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-6 col-md-6 col-sm-3 col-xs-1">
            <img src="images/faq.webp" alt="" class="rpic">
        </div>
    </div>
</body>
</html>