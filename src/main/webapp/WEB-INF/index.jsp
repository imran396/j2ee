<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pizzashop</title>
</head>
<body>
	<h1>List of All Pizzas</h1>
<table border="1" width="100%">
    <tr>
        <th>Name</th>
        <th>Price</th>
        <th>Actions</th>
    </tr>
		<c:forEach var="p" items="${pizzas}">
            <tr>
                <td>${p.name}</td>
                <td>${p.price}</td>
                <td>
                    <a href="edit/${p.id}">Edit</a>
                    <a href="delete/${p.id}">Delete</a>
                </td>
            </tr>
		</c:forEach>
</table>
	
<%--	<h1>List of All Pizzas With Toppings</h1>
	<ul>
		<c:forEach var="p" items="${pizzasWithToppings}">
			<li>
				${p.id} - ${p.name} - ${p.price}. Toppings:
				<c:forEach var="t" items="${p.toppings}">${t.name}, </c:forEach> 
			</li>
		</c:forEach>
	</ul>--%>
</body>
</html>