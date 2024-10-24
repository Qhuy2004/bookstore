


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
        <link rel="stylesheet" href="css/login.css">
        <title>Login</title>
        <script>
            function doforgetPass() {
                window.location.href = "forgetPassword";
            }
        </script>

    </head>
    <body>
        <!--        <div id="logreg-forms">-->
        <!--            <form class="form-signin" action="login" method="post">
                        <h1 class="h3 mb-3 font-weight-normal" style="text-align: center">Đăng nhập</h1>
                        <div class="d-block mx-4 mb-3 mb-lg-4  text-danger"><b>{mess}</b></div>
                        <input type="text" value="{username}" id="inputEmail"  class="form-control" placeholder="Tên người dùng" required="" autofocus="" name="Username">
                        <input type="password" value="{password}" id="inputPassword"  class="form-control" placeholder="Mật khẩu" required="" name="Password">
                        <div class="d-flex justify-content-around align-items-center mb-4">
                     Checkbox 
                    <div class="form-group form-check">
                            <input name="r" value="1" type="checkbox" class="form-check-input" id="exampleCheck1">
                            <label class="form-check-label" for="exampleCheck1">Nhớ mật khẩu</label>
                        </div>
                   <a href="change-newpassword.jsp">Quên mật khẩu?</a>
                  </div>
                        <button class="btn btn-success btn-block" type="submit"><i class="fas fa-sign-in-alt"></i>Đăng nhập</button>
                        <button class="btn btn-primary btn-block" type="button" onclick="window.location.href='signup.jsp'"><i class="fas fa-user-plus"></i> Đăng kí</button>
                        <a href="home"><i class="fas fa-angle-left"></i> Quay lại</a>
                    </form>
                   <form action="signup" class="form-signup">
                       <h1 class="h3 mb-3 font-weight-normal" style="text-align: center">Đăng kí</h1>
                        <input type="text" id="user-email" class="form-control" placeholder="Tên người dùng" required autofocus="" name="user">
                        <input type="password" id="user-pass" class="form-control" placeholder="Mật khẩu" required autofocus="" name="pass">
                        <input type="password" id="user-repeatpass" class="form-control" placeholder="Nhập lại mật khẩu" required autofocus="" name="repass">
        
                        <button class="btn btn-primary btn-block" type="submit"><i class="fas fa-user-plus"></i> Đăng kí</button>
                        <a href="#" id="cancel_signup"><i class="fas fa-angle-left"></i> Quay lại</a>
                    </form>
                    <br>
        
                </div>-->
        <section class="vh-100">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-6 text-black">

                        <div class="px-5 ms-xl-4">
                            <i class="fas fa-crow fa-2x me-3 pt-5 mt-xl-4" style="color: #709085;"></i>
                            <span class="h1 fw-bold mb-0">Logo</span>
                        </div>

                        <div class="d-flex align-items-center h-custom-2 px-5 ms-xl-4 mt-5 pt-5 pt-xl-0 mt-xl-n5">

                            <form style="width: 23rem;" action="login" method="post">

                                <h3 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Đăng nhập</h3>
                                <div class="d-block mx-4 mb-3 mb-lg-4  text-danger"><b>${mess}</b></div>
                                <div data-mdb-input-init class="form-outline mb-4">
                                    <label class="form-label" for="form2Example18">Tên người dùng</label>
                                    <input type="text" value="${username}" id="form2Example18" class="form-control form-control-lg" placeholder="Tên người dùng" name="Username" required/>

                                </div>

                                <div data-mdb-input-init class="form-outline mb-4">
                                    <label class="form-label" for="form2Example28">Mật khẩu</label>
                                    <input type="password" value="${password}" id="form2Example28" class="form-control form-control-lg" placeholder="Mật khẩu" name="Password" required/>

                                </div>

                                <div class="pt-1 mb-4">
                                    <button data-mdb-button-init data-mdb-ripple-init class="btn btn-info btn-lg btn-block" type="submit">Đăng nhập</button>
                                </div>

                                <div class="d-flex justify-content-around align-items-center mb-4">
                                    <!-- Checkbox -->
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" value="" id="form1Example3" checked name="r"/>
                                        <label class="form-check-label" for="form1Example3"> Nhớ mật khẩu </label>
                                    </div>
                                    <a href="change-newpassword.jsp">Quên mật khẩu?</a>
                                </div>

                                <p>Bạn không có tài khoản? <a href="signup.jsp" class="link-info">Đăng kí</a></p>
                                <p><a href="home">Quay lại</a></p>

                            </form>

                        </div>

                    </div>
                    <div class="col-sm-6 px-0 d-none d-sm-block">
                        <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/img3.webp"
                             alt="Login image" class="w-100 vh-100" style="object-fit: cover; object-position: left;">
                    </div>
                </div>
            </div>
        </section>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="js/login.js"></script>
    </body>
</html>
