<%-- 
    Document   : quanlysanpham
    Created on : May 21, 2023, 12:52:41 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chi tiết các hàng đã mua</title>
    <style>
        .adminsp {    
            width: 70%;
            margin-top: 70px;
            margin-left: 250px;
            text-align: center;
            overflow: auto;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: rgb(246, 232, 232);
            padding-bottom: 30px;
            min-height: 600px;	
        }
        
        .adminsp h2{
            margin: 20px;
        }

        .adminsp .timkiem {
        }

        .adminsp .timkiem .timkiem_sp {
            width: 300px;
            height: 40px;
            font-size: 16px;
            border: 2px solid black;
            border-radius: 5px;
        }

        .adminsp .timkiem .timkiem_sm {
            width: 80px;
            height: 40px;
            font-size: 14px;
            background-color: blue;
            color: white;
            border: blue;
            border-radius: 5px;
            
        }

        .adminsp .timkiem .timkiem_sm:hover {
            background-color: rgb(3, 3, 193);
        }

        .adminsp .themsp {
            margin: 20px;
            width: 150px;
            float: right;
            margin-right: 60px;
        }

        .adminsp .themsp a {
            border: 1px solid rgb(2, 159, 202);
            background-color: rgb(2, 159, 202);
            border-radius: 5px;
            display: block;
            padding: 5px;
            font-weight: bold;
            text-decoration: none;
            color: white;

        }

        .adminsp .themsp a:hover {
            background-color: rgb(0, 119, 152);
        }

        .adminsp .dssp table {
            border-collapse: collapse;
            width: 90%;
            margin: auto;
            margin-top: 50px;
            margin-bottom: 50px;
            background-color: white;
        }

        .adminsp .dssp tr {
            border-bottom: 1px solid #ddd;
        }

        .adminsp .dssp table tr:hover {
            background-color: #e2f7f9;
        }
        
        .adminsp .dssp th,td {
        	padding: 5px;
        }


        .adminsp .dssp .thaotac a {
            display: block;
            padding: 3px;
            text-decoration: none;
            color: white;
            border-radius: 5px;
            width: 110px;
            margin: auto;
            margin-top: 7px;
            margin-bottom: 7px;
        }

        .adminsp .dssp .thaotac .color_1 {
            border: 1px solid rgb(19, 162, 218);
            background-color: rgb(19, 162, 218);
        }

        .adminsp .dssp .thaotac .color_1:hover{
            background-color: rgb(15, 131, 177);
        }

        .adminsp .dssp img {
            display: block;
            width: 70px;
            height: 80px;
            border: 1px solid black;
            margin: 10px;
        }
        
        .adminsp .trang a{
            display: inline-block;
            padding: 5px;   
            text-decoration: none;
            font-weight: bold;
            color: gray;
        }
        
        .adminsp .trang a:hover {
            color: black;
        }
        
        .adminsp .trang a.active {
            color: red;
        }
        
        .mess_success {
            background-color: rgba(133, 235, 233,0.8); /* Màu xanh lá cây với độ mờ 50% */
            color: white;
            padding: 10px;
            display: none;
            position: fixed;
            top: 50%;
            left: 50%;
            min-width: 400px;
            min-height: 200px;
            line-height: 200px;
            text-align: center;
            border-radius: 20px;
            transform: translate(-50%, -50%);
        }

    </style>
</head>
<body>
    <jsp:include page="header.jsp"></jsp:include>
    <jsp:include page="admin.jsp"></jsp:include>
    <div class="adminsp">
    	<h2 style="text-align: left;">
    	<a style="text-decoration: none; color: red;" href="Servlet_qlnd">Khách hàng</a> >> ${requestScope.ten}</h2>
        <hr>
        <br/>
        <h2>DANH SÁCH HÀNG ĐÃ MUA CỦA KHÁCH HÀNG  </h2>
        <h2>${requestScope.ten}</h2>
        
        <div class="dssp">
            <table>
                <tr>
                    <th style="width: 5%;">STT</th>
                    <th style="width: 30%;">Tên sản phẩm</th>
                    <th style="width: 20%;">Giá tiền</th>
                    <th style="width: 20%;">Số lượng mua</th>
                    <th>Ngày mua</th>
                </tr>
            <c:set value="1" var="i"/>
           	<c:forEach items="${requestScope.dsorder}" var="od" >
           		<tr>
           			<td>${i}</td>
                    <c:set value="${i+1}" var="i"/>
           			<td>${od.namePro}</td>
           			<td>${od.price}</td>
           			<td>${od.qunatity}</td>
           			<td>${od.date}</td>
           			
           		</tr>
           	</c:forEach>
                    
            </table>
                
        </div>
    </div>
                
  
                
</body>
</html>