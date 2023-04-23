<%@ page import="java.util.*, cmpsc390project.jdbc.*" %>
<!DOCTYPE html>
<html>
<head>
	<title>User Tracker App</title>
</head>

<%
	//get users from the request object
	List<User> theUsers = (List<User>) request.getAttribute("USER_LIST");
%>

<body>

	<%= theUsers %>

</body>
</html>