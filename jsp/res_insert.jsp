<%@ page language="java" import="java.sql.*,java.io.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>美容預約表單</title>
  </head>

  <body>
    <%
    request.setCharacterEncoding("utf-8");
//    response.setContentType("text/html;charset=utf-8");
//    PrintWriter out=response.getWriter();	   
    String rDate = request.getParameter("rDate");
    String rTime = request.getParameter("rTime");
    String rSelect = request.getParameter("rSelect");
    String pKind = request.getParameter("pKind");
    String pAge = request.getParameter("pAge");
    String pGender = request.getParameter("pGender");
    String pName = request.getParameter("pName");
    String pNote = request.getParameter("pNote");
        
    Connection dbCon = null;
    Statement stmt = null;
    ResultSet rs = null;
    
    //驅動程式參數
    String sDriver = "com.mysql.cj.jdbc.Driver";	       
    String user     = "root";
    String pwd = "1234";
    String url      = "jdbc:mysql://localhost:3306/petshop";
    String sql = ("insert into reservation( res_date, res_time , res_opt, pet_kind, pet_age, pet_gender, pet_name, pet_note) values('"+rDate+"','"+rTime+"','"+rSelect+"','"+pKind+"','"+pAge+"','"+pGender+"','"+pName+"','"+pNote+"');");
   
    Class.forName(sDriver);
    dbCon = DriverManager.getConnection(url,user,pwd);
    stmt = dbCon.createStatement();
    int flag = stmt.executeUpdate(sql);
    if(flag != 0)
    {
    	 out.println("<script>alert('新增成功！');history.go(-1);</script>");
    }
    else
    {
    	 out.println("<script>alert('新增失敗！');history.go(-1);</script>");
    }
    stmt.close(); 
    dbCon.close(); 
    %>
    
    
  </body>

</html>
