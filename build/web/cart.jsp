


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
        <title>Cart</title>
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

        <!-- Product section-->
        <section class="py-5">
            <div class="container" style="min-height: 1000px">
                <c:choose>
                    <c:when test="${sessionScope.carts==null||sessionScope.carts.size()==0}">
                        <h1>Không có sản phẩm nào</h1>
                    </c:when>
                    <c:otherwise>
                        <h3>Danh sách sản phẩm</h3>
                        <c:if test="${mess != null}">
                            <div class="d-block mx-4 mb-3 mb-lg-4  text-danger"><b>${mess}</b></div>
                                </c:if>
                        <form action="update-quantity">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">Hình ảnh</th>
                                        <th scope="col">Tên</th>
                                        <th scope="col">Giá</th>
                                        <th scope="col">Số lượng</th>
                                        <th scope="col">Tổng tiền</th>
                                        <th scope="col">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:set var="allQuantitiesValid" value="true" scope="session" />
                                    <c:forEach items="${carts}" var="C">

                                        <tr>
                                    <input type="hidden" name="productId" value="${C.value.product.id}"/>
                                    <th scope="row">${C.value.product.id}</th>
                                    <td><img src="${C.value.product.imageUrl}" width="50"/></td>
                                    <td>${C.value.product.name}</td>                                     
                                    <td>${C.value.product.price}</td>
                                    <td>
                                        <input onchange="validateAndSubmit(this)" type="number" name="quantity" min="1"  value="${C.value.quantity}" required />
                                    </td>
                                    <td>${C.value.product.price * C.value.quantity} VNĐ</td>
                                    <script>
                                        function validateAndSubmit(input) {
                                            if (input.value <= 0) {
                                                alert("Số lượng phải lớn hơn 0!");
                                                input.value = 1;
                                            } else {
                                                input.form.submit();
                                            }
                                        }
                                    </script>
                                    <td><a href="delete-cart?productId=${C.value.product.id}" class="btn btn-outline-danger"><i class="bi bi-trash"></i>Xóa</a></td>
                                    </tr>
                                    <c:if test="${C.value.quantity <= 0}">
                                        <c:set var="allQuantitiesValid" value="false" scope="session"/>
                                    </c:if>

                                </c:forEach>
                                </tbody>
                            </table>
                            <h3>Tổng tiền: ${totalMoney} VND</h3>
                        </form>
                        <c:if test="${sessionScope.allQuantitiesValid}">
                            <a href="checkout" class="btn btn-success w-25">Thanh toán</a>
                        </c:if>
                    </c:otherwise>
                </c:choose>
            </div>
        </section>
        <%@include file="components/footerComponent.jsp" %>
    </body>
</html>
