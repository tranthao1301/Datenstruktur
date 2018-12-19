<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Cart Page</title>
</head>
<body>

<h3>Cart Page</h3>
<table width=100% cellpadding="2" cellspacing="2" border="1">
    <tr>
        <th>Option</th>
        <th>Id</th>
        <th>Name</th>
        <th>Photo</th>
        <th>Price</th>
        <th>Quantity</th>
        <th>Sub Total</th>
    </tr>
    <c:set var="total" value="${item.total}"></c:set>
    <c:forEach var="item" items="${sessionScope.cart }">
        <c:set var="total"
               value="${(item.product.price.mul(quantity)).add(total)}"></c:set>
        <tr>
            <td align="center"><a
                    href="${pageContext.request.contextPath }/cart/remove/${item.product.id }"
                    onclick="return confirm('Are you sure?')">Remove</a></td>
            <td>${item.product.id }</td>
            <td>${item.product.name }</td>
            <td><img src="${pageContext.request.contextPath}/resources/images/${item.product.photo}"
                     width="100"></td>
            <td>${item.product.price }</td>
            <td>${item.quantity }</td>
            <td>${item.product.price.mul(item.quantity)} Euro</td>
        </tr>
    </c:forEach>
    <tr>
        <td colspan="6" align="right">Sum</td>
        <td>${total } Euro</td>
    </tr>
</table>
<br>
<a href="${pageContext.request.contextPath }/product">Continue
    Shopping</a>


</body>
</html>