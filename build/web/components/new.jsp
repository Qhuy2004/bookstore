<%-- 
    Document   : new
    Created on : Oct 30, 2024, 3:54:49 PM
    Author     : phuoc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:if test="${p1 != null}">
       <section class="py-5 bg-light">
            <div class="container px-4 px-lg-5 mt-5">
                
                <h2 class="fw-bolder mb-4 text-center">Sản phẩm mới</h2>
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">

                    <c:forEach items="${p1}" var="L">
                        <div class="col mb-5">
                            <div class="card h-100">
                                <!-- Sale badge-->
<!--                                <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>-->
                                <!-- Product image-->
                                <a href="detail?productId=${L.id}">
                                <img class="card-img-top" src="${L.imageUrl}" alt="..." />
                                <!-- Product details-->
                                <div class="card-body p-4">
                                    <div class="text-center">
                                        <!-- Product name-->
                                        <h5 class="fw-bolder">${L.name}</h5>
                                        <!-- Product reviews-->
                                        <div class="d-flex justify-content-center small text-warning mb-2">
                                            <div class="bi-star-fill"></div>
                                            <div class="bi-star-fill"></div>
                                            <div class="bi-star-fill"></div>
                                            <div class="bi-star-fill"></div>
                                            <div class="bi-star-fill"></div>
                                        </div>
                                        <!-- Product price-->
<!--                                        <span class="text-muted text-decoration-line-through">{L.price+10}</span>-->
                                        ${L.price} VND
                                    </div>
                                </div>
                                <!-- Product actions-->
                                <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                    <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="add-to-cart?productId=${L.id}">Thêm vào giỏ hàng</a></div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>


                </div>
            </div>
            
        </section>
       </c:if>
    </body>
</html>
