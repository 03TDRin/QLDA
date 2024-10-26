<%-- 
    Document   : Menu
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--begin of menu-->
<link href="css/main.css" rel="stylesheet" type="text/css"/>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">

<style>
    .bgg-dark {
        background-color: #1d1d1d; /* Màu nền đen */
    }
</style>
<nav class="navbar navbar-expand-md navbar-dark bgg-dark">
    <div class="container">
        <a class="navbar-brand" href="index">
            <img src="Images/logo.jpg" alt="Bothomthit Logo" height="100">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse justify-content-end" id="navbarsExampleDefault">
            <ul class="navbar-nav m-auto">
                <c:if test="${sessionScope.acc != null}">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Xin Chào ${sessionScope.acc.user}</a>
                    </li>
                </c:if>
                <c:if test="${sessionScope.acc.isSell == 1}">
                    <li class="nav-item">
                        <a class="nav-link" href="manager">Quản Lý Sản Phẩm</a>
                    </li>
                </c:if>
                <c:if test="${sessionScope.acc == null}">
                    <li class="nav-item">
                        <a class="nav-link" href="Login.jsp">Đăng Nhập</a>
                    </li>
                </c:if>
                <li class="nav-item">
                    <a class="nav-link" href="About.jsp">Về Chúng Tôi</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Contact.jsp">Liên Hệ</a>
                </li>
                <c:if test="${sessionScope.acc != null}">
                    <li class="nav-item">
                        <a class="nav-link" href="logout">Đăng Xuất</a>
                    </li> 
                </c:if>
            </ul>

            <form action="search" method="post" class="form-inline my-2 my-lg-0">
                <div class="input-group input-group-sm">
                    <input oninput="searchByName(this)" value="${txtS}" name="txt" type="text" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm" placeholder="Search...">
                    <div class="input-group-append">
                        <button type="submit" class="btn btn-secondary btn-number">
                            <i class="fa fa-search"></i>
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</nav>

<!--end of menu-->
