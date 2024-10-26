<%-- 
    Document   : ManagerTrans
--%>

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
        <link href="css/manager.css" rel="stylesheet" type="text/css"/>
        <style>
            img{
                width: 180px;
                height: 180px;
            }


        </style>
    <body>
        <%@ include file="LeftManager.jsp"%>
        <div class="container" style="margin-left: 250px;">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2>Quản Lý <b>Bán Hàng</b></h2>
                        </div>
                        <div class="col-sm-6">
                            <a href="#addTransactionModal"  class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Bán Sản Phẩm</span></a>						
                        </div>
                    </div>
                </div>

                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th>
                                <span class="custom-checkbox">
                                    <input type="checkbox" id="selectAll">
                                    <label for="selectAll"></label>
                                </span>
                            </th>
                            <th>ID</th>
                            <th>Tên Khách</th>
                            <th>Sản Phẩm</th>
                            <th>Ngày Bán</th>
                            <th>Số Lượng</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${list}" var="o">
                            <tr>
                                <td>
                                    <span class="custom-checkbox">
                                        <input type="checkbox" id="checkbox1" name="options[]" value="1">
                                        <label for="checkbox1"></label>
                                    </span>
                                </td>
                                <td>${o.tID}</td>
                                <td>${o.cusname}</td>
                                <c:forEach items="${listP}" var="i">
                                    <c:if test="${i.id eq o.pID}">
                                        <td>${i.name}</td>
                                    </c:if>
                                </c:forEach>
                                <td>${o.date}</td>
                                <td>${o.quanti}</td>

                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <div class="clearfix">
                    <ul class="pagination">
                        <li class="page-item disabled"><a href="#">Previous</a></li>
                        <li class="page-item active"><a href="#" class="page-link">1</a></li>
                        <li class="page-item"><a href="#" class="page-link">2</a></li>
                        <li class="page-item"><a href="#" class="page-link">3</a></li>
                        <li class="page-item"><a href="#" class="page-link">4</a></li>
                        <li class="page-item"><a href="#" class="page-link">5</a></li>
                        <li class="page-item"><a href="#" class="page-link">Next</a></li>
                    </ul>
                </div>
            </div>

        </div>

        <!-- Add Modal HTML -->
<div id="addTransactionModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="addtrans" method="post">
                <div class="modal-header">						
                    <h4 class="modal-title">Thêm Giao Dịch Mới</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">					
                    <div class="form-group">
                        <label>Tên Khách Hàng</label>
                        <input name="cusname" type="text" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Sản Phẩm</label>
                        <div>
                            <select name="pID" class="form-select" aria-label="Chọn Sản Phẩm">
                                <c:forEach items="${listP}" var="product">
                                    <option value="${product.id}">${product.name}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Số Lượng</label>
                        <input name="quantity" type="number" class="form-control" required>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Hủy</button>
                    <button type="submit" class="btn btn-success">Thêm</button>
                </div>
            </form>
        </div>
    </div>
</div>


        <script src="js/manager.js" type="text/javascript"></script>
    </body>
</html>