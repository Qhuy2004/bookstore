<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Shipping Management</title>
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <h2 class="mt-5">Quản lý giao hàng</h2>
        <table class="table mt-3">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Họ và tên</th>
                    <th>Số điện thoại</th>
                    <th>Địa chỉ</th>
                    <th>Trạng thái</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                
                    <tr>
                        <td>${shipping.id}</td>
                        <td>${shipping.name}</td>
                        <td>${shipping.phone}</td>
                        <td>${shipping.address}</td>
                        <td>${shipping.status}</td>
                        <td>
                            <form action="shipping" method="post" class="d-inline">
                                <input type="hidden" name="id" value="${shipping.id}">
                                <select name="status" class="form-select d-inline" style="width: auto;">
                                    <option value="Pending" ${shipping.status == 'Pending' ? 'selected' : ''}>Pending</option>
                                    <option value="Shipped" ${shipping.status == 'Shipped' ? 'selected' : ''}>Shipped</option>
                                </select>
                                <button type="submit" class="btn btn-primary">Cập nhật</button>
                            </form>
                        </td>
                    </tr>
                
            </tbody>
           
        </table>
        <a href="orders" class="btn btn-success">Quay lại</a>
    </div>
     
</body>
</html>
