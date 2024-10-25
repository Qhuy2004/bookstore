
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"
            />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Shop Homepage - Start Bootstrap Template</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
            rel="stylesheet"
            />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <body>
        <%@include file="components/navBarComponent.jsp" %>

        <div class="container" style="min-height: 1000px">
            <div class="alert alert-success text-center mt-5" role="alert" >
                <h3>Danh sách sản phẩm</h3>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Hình ảnh</th>
                                    <th scope="col">Tên</th>
                                    <th scope="col">Giá</th>
                                    <th scope="col">Số lượng</th>
                                    <th scope="col">Tổng tiền</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${cartss}" var="C">
                                    <tr>
                                <input type="hidden" name="productId" value="${C.value.product.id}"/>
                                <th scope="row">${C.value.product.id}</th>
                                <td><img src="${C.value.product.imageUrl}" width="50"/></td>
                                <td>${C.value.product.name}</td>
                                <td>${C.value.product.price}</td>
                                <td>${C.value.quantity}</td>
                                <td>${C.value.product.price*C.value.quantity}</td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                        <h3>Tổng tiền: ${totalPrice} VND</h3>
                Order successfully, Thank you very much...
                <div class="text-center mt-2">
                    <a class="btn btn-outline-primary" href="home">Tiếp tục mua sắm</a>
                </div>
            </div>
        </div>
        <%@include file="components/footerComponent.jsp" %>
    </body>
</html>

