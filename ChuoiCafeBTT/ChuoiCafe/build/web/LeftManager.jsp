<%-- 
    Document   : LeftM
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href='https://fonts.googleapis.com/css?family=Roboto:400,300,600,400italic,700' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<link href="css/all.min.css" rel="stylesheet" type="text/css"/>
<link href="style.css" rel="stylesheet" type="text/css"/>
<link href="css/main.css" rel="stylesheet" type="text/css"/>
<style>
    #fh5co-aside {
        padding-top: 40px;
        padding-bottom: 40px;
        width: 15%;
        position: fixed;
        bottom: 0;
        top: 0;
        left: 0;
        overflow-y: scroll;
        background-color: #1d1d1d; /* Màu nền mới */
        -webkit-transition: 0.5s;
        -o-transition: 0.5s;
        transition: 0.5s;
    }

    #fh5co-aside.border {
        border-right: 1px solid #e6e6e6;
    }
    @media screen and (max-width: 1200px) {
        #fh5co-aside {
            width: 30%;
        }
    }
    @media screen and (max-width: 768px) {
        #fh5co-aside {
            width: 270px;
            -moz-transform: translateX(-270px);
            -webkit-transform: translateX(-270px);
            -ms-transform: translateX(-270px);
            -o-transform: translateX(-270px);
            transform: translateX(-270px);
        }
    }
    #fh5co-aside #fh5co-logo {
        text-align: center;
    }
    #fh5co-aside #fh5co-main-menu ul {
        text-align: center;
        margin: 0;
        padding: 0;
    }
    @media screen and (max-width: 768px) {
        #fh5co-aside #fh5co-main-menu ul {
            margin: 0 0 2em 0;
        }
    }
    #fh5co-aside #fh5co-main-menu ul li {
        margin: 0 0 10px 0;
        padding: 0;
        list-style: none;
    }
    #fh5co-aside #fh5co-main-menu ul li a {
        color: white;
        text-decoration: none;
        letter-spacing: .1em;
        text-transform: uppercase;
        font-size: 15px;
        font-weight: 300;
        position: relative;
        -webkit-transition: 0.3s;
        -o-transition: 0.3s;
        transition: 0.3s;
        padding: 10px 10px;
        letter-spacing: .2em;
        font-family: "Montserrat", Arial, sans-serif;
    }
    #fh5co-aside #fh5co-main-menu ul li a:after {
        content: "";
        position: absolute;
        height: 2px;
        bottom: 7px;
        left: 10px;
        right: 10px;
        background-color: #da1212;
        visibility: hidden;
        -webkit-transform: scaleX(0);
        -moz-transform: scaleX(0);
        -ms-transform: scaleX(0);
        -o-transform: scaleX(0);
        transform: scaleX(0);
        -webkit-transition: all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1.275);
        -moz-transition: all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1.275);
        -ms-transition: all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1.275);
        -o-transition: all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1.275);
        transition: all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1.275);
    }
    #fh5co-aside #fh5co-main-menu ul li a:hover {
        text-decoration: none;
        color: black;
    }
    #fh5co-aside #fh5co-main-menu ul li a:hover:after {
        visibility: visible;
        -webkit-transform: scaleX(1);
        -moz-transform: scaleX(1);
        -ms-transform: scaleX(1);
        -o-transform: scaleX(1);
        transform: scaleX(1);
    }
    #fh5co-aside #fh5co-main-menu ul li.fh5co-active a {
        color: #f27474;
    }
    #fh5co-aside #fh5co-main-menu ul li.fh5co-active a:after {
        visibility: visible;
        -webkit-transform: scaleX(1);
        -moz-transform: scaleX(1);
        -ms-transform: scaleX(1);
        -o-transform: scaleX(1);
        transform: scaleX(1);
    }
    #fh5co-aside .fh5co-footer {
        position: absolute;
        bottom: 40px;
        font-size: 14px;
        text-align: center;
        width: 100%;
        font-weight: 400;
        color: white;
    }
    @media screen and (max-width: 768px) {
        #fh5co-aside .fh5co-footer {
            position: relative;
            bottom: 0;
        }
    }
    #fh5co-aside .fh5co-footer span {
        display: block;
    }
    #fh5co-aside .fh5co-footer ul {
        padding: 0;
        margin: 0;
        text-align: center;
    }
    #fh5co-aside .fh5co-footer ul li {
        padding: 0;
        margin: 0;
        display: inline;
        list-style: none;
    }
    #fh5co-aside .fh5co-footer ul li a {
        color: white;
        padding: 4px;
    }
    #fh5co-aside .fh5co-footer ul li a:hover, #fh5co-aside .fh5co-footer ul li a:active, #fh5co-aside .fh5co-footer ul li a:focus {
        text-decoration: none;
        outline: none;
        color: #da1212;
    }

    #fh5co-main {
        width: 85%;
        float: right;
        -webkit-transition: 0.5s;
        -o-transition: 0.5s;
        transition: 0.5s;
    }
    @media screen and (max-width: 1200px) {
        #fh5co-main {
            width: 70%;
        }
    }
    @media screen and (max-width: 768px) {
        #fh5co-main {
            width: 100%;
        }
    }
    #fh5co-main .fh5co-narrow-content {
        position: relative;
        width: 80%;
        margin: 0 auto;
        padding: 4em 0;
    }
    @media screen and (max-width: 768px) {
        #fh5co-main .fh5co-narrow-content {
            width: 100%;
            padding: 3.5em 1em;
        }
    }
    #fh5co-page {
        width: 100%;
        overflow: hidden;
        position: relative;
    }

    body.offcanvas #fh5co-main, body.offcanvas .fh5co-nav-toggle {
        top: 0;
        -moz-transform: translateX(270px);
        -webkit-transform: translateX(270px);
        -ms-transform: translateX(270px);
        -o-transform: translateX(270px);
        transform: translateX(270px);
    }
</style>


<div id="fh5co-page">
    <a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle"><i></i></a>
    <aside id="fh5co-aside" role="complementary" class="border js-fullheight">

        <h1 id="fh5co-logo"><a href="index"><img src="Images/logo.jpg" alt="Bothomthit Logo"></a></h1>
        <nav id="fh5co-main-menu" role="navigation">
            <ul>
                <li><a href="index">Trang Chủ</a></li>
                <li><a href="manager">QL Sản Phẩm</a></li>
                <li><a href="managertrans">QL Bán Hàng</a></li>
                <li><a href="dailysales">Thống Kê</a></li>
            </ul>
        </nav>

</div>