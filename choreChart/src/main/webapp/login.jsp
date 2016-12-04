<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><title>Name</title></head>
<form method="POST" action="NameServlet">
<table>
  <tr >
    <td colspan="2">ChoreChart Login</td>
  </tr><tr>
    <td>Email / Username </td>
    <td><input type="text" name="username"/></td>
  </tr><tr>
    <td>Password </td>
    <td><input type="text" name="password"/></td>
  </tr><tr >
    <td colspan="2"><input type=Submit name="submit" value="Log In"/></td>
  </tr>
</table>
</form>

</body>
</html>