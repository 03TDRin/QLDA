<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Daily Sales Report</title>
    <!-- Google Charts -->
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
        // Load Google Charts
        google.charts.load('current', {'packages':['corechart']});

        // Set callback function to draw the chart when Google Charts is loaded
        google.charts.setOnLoadCallback(drawChart);

        function drawChart() {
            // Prepare data for the chart
            var data = google.visualization.arrayToDataTable([
                ['Ngày', 'Doanh số'], // Tên các cột trong biểu đồ
                <c:forEach items="${summaries}" var="summary">
                    ['${summary.date}', ${summary.price * summary.quantity}], // Tính doanh số từ giá và số lượng
                </c:forEach>
            ]);

            // Set options for the chart
            var options = {
                title: 'Doanh số theo ngày',
                hAxis: {title: 'Ngày'},
                vAxis: {title: 'Doanh số'},
                legend: 'none'
            };

            // Tạo biểu đồ cột và vẽ nó vào phần tử HTML với id 'chart_div'
            var chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));
            chart.draw(data, options);
        }
    </script>
</head>
<body>
    <h1>Biểu đồ doanh số theo ngày</h1>
    <!-- Div nơi biểu đồ sẽ được vẽ -->
    <div id="chart_div" style="width: 100%; height: 500px;"></div>
</body>
</html>
