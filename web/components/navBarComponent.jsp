<%-- 
    Document   : navBarComponent
    Created on : Feb 17, 2022, 9:00:41 PM
    Author     : Le Hong Quan
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta charset="utf-8" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"
            />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Book Store</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
            rel="stylesheet"

            />
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </head>
    <!-- Navigation-->
    <script>
        function login() {
            window.location.href = "login";
        }
        function logout() {
            window.location.href = "logout";

        }
    </script>


    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container px-4 px-lg-5">
            <a class="navbar-brand" href="home">Trang chủ</a>
            <button
                class="navbar-toggler"
                type="button"
                data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent"
                aria-expanded="false"
                aria-label="Toggle navigation"
                >
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                    <c:if test="${sessionScope.acc.isAdmin == 1}">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="managerAccount">Quản lý tài khoản</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="managerCategory">Quản lý danh mục</a>
                        </li>

                    </c:if>
                    <c:if test="${sessionScope.acc.isAdmin == 1}">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="manager">Quản lý sản phẩm</a>
                        </li>
                    </c:if>

                    <c:if test="${sessionScope.acc.isAdmin == 1}">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="orders">Quản lý đơn hàng</a>
                        </li>
                    </c:if>
                    <c:if test="${sessionScope.acc.isAdmin == 1 }">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="statistic">Thống kê</a>
                        </li>
                    </c:if>





                </ul>
                <form action="search" class="d-flex mx-auto">
                    <input
                        value="${key}"
                        class="form-control me-4"
                        type="search"
                        placeholder="Search"
                        aria-label="Search"
                        name="keyword"
                        />
                    <button class="btn btn-outline-success" type="submit">
                        Search
                    </button>
                </form>
                <div class="d-flex my-2">
                    <c:if test="${sessionScope.acc.isAdmin != 1}">
                        <a class="btn btn-outline-dark" href="carts">
                            <i class="bi-cart-fill me-1"></i>
                            Giỏ hàng
                            <span class="badge bg-dark text-white ms-1 rounded-pill">${sessionScope.carts.size()}</span>
                        </a>

                    </c:if>

                </div>

                <c:choose>
                    <c:when test="${sessionScope.acc == null}">
                        <button class="btn btn-outline-primary ms-lg-2" onclick="login()">Đăng nhập</button>
                    </c:when>

                    <c:otherwise>
                        <button class="btn btn-outline-primary ms-lg-2" onclick="logout()">Đăng xuất</button>
                    </c:otherwise>
                </c:choose>




            </div>
        </div>
    </nav>
</html>
