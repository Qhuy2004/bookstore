<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Chi tiết Đơn hàng</title>
    <!-- CSS và Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
   

    <div class="container mt-5">
        <h2 class="text-center">Chi tiết Đơn hàng #${orderId}</h2>
        <table class="table table-bordered mt-3">
            <thead class="table-light">
                <tr>
                    <th>#</th>
                    <th>Hình ảnh</th>
                    <th>Tên sản phẩm</th>
                    <th>Giá</th>
                    <th>Số lượng</th>
                    <th>Tổng tiền</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${orderDetails}" var="detail">
                    <tr>
                        <td>${detail.id}</td>
                        <td><img src="${detail.productImage}" width="50" alt="${detail.productName}" /></td>
                        <td>${detail.productName}</td>
                        <td>${detail.productPrice} VND</td>
                        <td>${detail.quantity}</td>
                        <td>${detail.productPrice * detail.quantity} VND</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        
            <a href="orders" class="btn btn-success">Quay lại</a>
       
    </div>

   
</body>
</html>
