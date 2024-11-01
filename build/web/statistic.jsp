<%@ page contentType="text/html" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Thống kê Doanh số Hàng ngày</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f4f4f4;
            }
            .container {
                max-width: 600px;
                margin: auto;
                padding: 20px;
                background: #fff;
                border-radius: 8px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            }
            h1 {
                text-align: center;
                color: #333;
            }
            .statistic {
                display: flex;
                justify-content: space-between;
                padding: 20px;
                border-bottom: 1px solid #ddd;
            }
            .statistic div {
                font-size: 1.2em;
                color: #555;
            }
            .total-sales {
                text-align: center;
                font-size: 1.5em;
                color: #007bff;
                padding: 10px;
            }
        </style>
    </head>
    <body>

        <div class="container">
            <h1>Thống kê Doanh số theo ngày</h1>
            <div class="statistic">
                <div><strong>Số đơn hàng:</strong> <%= request.getAttribute("totalOrders") %></div>
            </div>
            <div class="statistic">
                <div><strong>Tổng số tiền:</strong> <%= request.getAttribute("totalSales") %> VND</div>
            </div>

        </div>
            <div class="text-center mt-3">
                <a class="btn btn-success" href="home">Trang chủ</a>
            </div>
    </body>
</html>
