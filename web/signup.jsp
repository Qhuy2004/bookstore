
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="css/login.css">
    </head>
    <body>
        <section class="vh-100 bg-image"
                 style="background-image: url('https://mdbcdn.b-cdn.net/img/Photos/new-templates/search-box/img4.webp');">
            <div class="mask d-flex align-items-center h-100 gradient-custom-3">
                <div class="container h-100">
                    <div class="row d-flex justify-content-center align-items-center h-100">
                        <div class="col-12 col-md-9 col-lg-7 col-xl-6">
                            <div class="card" style="border-radius: 15px;">
                                <div class="card-body p-5">
                                    <h2 class="text-uppercase text-center mb-5">Đăng kí</h2>
                                       <div class="d-block mx-4 mb-3 mb-lg-4  text-danger"><b>${mess}</b></div>
                                       <form action="signup" method="post" id="logreg-forms">

                                        <div data-mdb-input-init class="form-outline mb-4">
                                            <label class="form-label" for="form3Example1cg">Tên người dùng</label>
                                            <input type="text" id="form3Example1cg" class="form-control form-control-lg" placeholder="Tên người dùng" required name="user"/>

                                        </div>
                                        <div data-mdb-input-init class="form-outline mb-4">
                                            <label class="form-label" for="form3Example1cg">Mật khẩu</label>
                                            <input type="password" id="form3Example4cg" class="form-control form-control-lg" placeholder="Mật khẩu" required name="pass" />
                                        </div>

                                        <div data-mdb-input-init class="form-outline mb-4">
                                            <label class="form-label" for="form3Example4cdg">Nhập lại mật khẩu</label>
                                            <input type="password" id="form3Example4cdg" class="form-control form-control-lg" placeholder="Nhập lại mật khẩu" required name="repass"/>

                                        </div>
                                        <div class="d-flex justify-content-center">
                                            <button  type="submit" data-mdb-button-init
                                                     data-mdb-ripple-init class="btn btn-success btn-block btn-lg gradient-custom-4 text-body" >Đăng kí</button>
                                        </div>

                                        <p class="text-center text-muted mt-5 mb-0">Bạn đã có tài khoản? <a href="login"
                                                                                                            class="fw-bold text-body"><u>Đăng nhập</u></a></p>

                                    </form>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>
