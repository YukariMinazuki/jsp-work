<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import = "java.sql.*,java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
	request.setCharacterEncoding("utf-8");
    response.setCharacterEncoding("utf-8");
    response.setContentType("text/html;charset=utf-8");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>~</title>
</head>
<body>

<%
    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
    String connectSQL = "jdbc:sqlserver://localhost:1433;DatabaseName=software";
    Connection conn = java.sql.DriverManager.getConnection(connectSQL,"sa","");
    
    String sql = "delete from nsb where id=?";
    PreparedStatement st = conn.prepareStatement(sql);
    
    String id = request.getParameter("id");
    
    st.setInt(1, Integer.parseInt(id));

    st.executeUpdate();
    
    st.close();
    conn.close();
%>
<h1>您的信息已经提交成功</h1>
</body>
</html>