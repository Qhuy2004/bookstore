<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>

        <title>Quản lý Đơn hàng</title>
        <!-- CSS và Bootstrap -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
       

        <div class="container mt-5">
            <h2 class="text-center">Quản lý Đơn hàng</h2>
            <table class="table table-bordered mt-3">
                <thead class="table-light">
                    <tr>
                        <th>ID</th>
                        <th>Khách hàng</th>
                        <th>Tổng tiền</th>
                        <th>Ghi chú</th>
                        <th>Ngày đặt</th>
                        
                        <!--<th>Hành động</th>-->
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${orders}" var="order">
                        <tr>
                            <td>${order.id}</td>
                            <td>${order.accountId}</td>
                            <td>${order.totalPrice} VND</td>
                            <td>${order.note}</td>
                            <td>${order.createdDate}</td>

<!--                            <td>
                                <form action="orders" method="post">
                                    <input type="hidden" name="orderId" value="{order.id}" />
                                    <select name="status" class="form-select">
                                        <option value="0" <cif test="{order.status == 0}">selected</cif>>Chưa giao</option>
                                        <option value="1" <cif test="{order.status == 1}">selected</cif>>Đã giao</option>
                                        </select>-->
                                    
                               <td>
                                <a class="btn btn-primary" href="orderdetail?orderId=${order.id}">Chi tiết</a>
<!--                                <button type="submit" class="btn btn-primary">Update</button>-->
                            </td>
                            <td>
                                <a class="btn btn-primary" href="shipping?orderId=${order.id}">Ship</a>
                            </td>

                        </tr>
                    </c:forEach>
                </tbody>
            </table>
           
            <a class="btn btn-success " href="home">Trang chủ</a>
            
        </div>

        
    </body>
</html>
