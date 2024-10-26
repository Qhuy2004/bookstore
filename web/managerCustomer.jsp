<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Manager Product</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="css/ManagerProduct.css" rel="stylesheet" type="text/css"/>
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
            rel="stylesheet"
            />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
        <style>
            img{
                width: 200px;
                height: 120px;
            }
        </style>
        <script>
            function back() {
                window.location.href = "home";
            }
            function doDelete(id)
            {
                var c = confirm("Are you sure?");
                if (c)
                {
                    window.location.href = "delete?pid=" + id;
                }
            }
        </script>

    <body>

        <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <h2>Quản lý <b>khách hàng</b></h2>   
                    </div>
                </div>
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <!--                            <th>
                                                            <span class="custom-checkbox">
                                                                <input type="checkbox" id="selectAll">
                                                                <label for="selectAll"></label>
                                                            </span>
                                                        </th>-->
                            <th>ID</th>
                            <th>AccountID</th>
                            <th>ProductID</th>
                            <th>Họ Và Tên</th>
                            <th>Số điện thoại</th>
                            <th>Địa chỉ</th>
                            <th>Email</th>
                            <th>Ngày mua</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${c}" var="p">
                            <tr>
                                <!--                                <td>
                                                                    <span class="custom-checkbox">
                                                                        <input type="checkbox" id="checkbox1" name="options[]" value="1">
                                                                        <label for="checkbox1"></label>
                                                                    </span>
                                                                </td>-->
                                <td>${p.customerID}</td>
                                <td>${p.accountID}</td>
                                <td>${p.productID}</td>
                                <td>${p.name}</td>
                                <td>${p.phone}</td>
                                <td>${p.address}</td>
                                <td>${p.email}</td>
                                <td>${p.dateBuy}</td>
                                <td>

                                  
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>

            </div>

            <a href="#">
                <button type="button" class="btn btn-primary" onclick="back()">Quay lại</button>
        </div>


        <!--<script src="js/ManagerProduct.js" type="text/javascript"></script>-->
    </body>
</html>
