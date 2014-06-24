<%--
  Created by IntelliJ IDEA.
  User: imran
  Date: 6/18/14
  Time: 12:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<div>
<h1>Add Pizza </h1>
    <form method="post"  action="/pizzashop/update">
      <table>
          <tr>
              <td>Name </td>
              <td> <input type="text" name="name" value="${pizza.name}"></td>
          </tr>
          <tr>
              <td>Price</td>
              <td><input type="text" name="price" value="${pizza.price}"><input type="hidden" name="id" value="${pizza.id}"></td>
          </tr>
          <tr>
              <td colspan="2"><input type="submit"></td>
          </tr>
      </table>
  </form>
</div>
</body>
</html>
