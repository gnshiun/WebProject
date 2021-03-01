<%@ page language="java" import="java.sql.*,java.io.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>美容預約表單</title>
  </head>

  <body>
    <%
    //取值
    request.setCharacterEncoding("utf-8");   
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
    //ResultSet rs = null;
    
    //驅動程式參數
    String sDriver = "com.mysql.cj.jdbc.Driver"; //MySQL 
    String user     = "root"; //使用者帳號
    String pwd = "1234"; //使用者密碼
    String url      = "jdbc:mysql://localhost:3306/petsworld"; //port3306,資料庫名petsworld
    //資料表名reservation,SQL語法
    String sql = ("insert into reservation( res_date, res_time , res_opt, pet_kind, pet_age, pet_gender, pet_name, pet_note) values('"+rDate+"','"+rTime+"','"+rSelect+"','"+pKind+"','"+pAge+"','"+pGender+"','"+pName+"','"+pNote+"');");
   
    Class.forName(sDriver); //載入JDBCDriver語法
    dbCon = DriverManager.getConnection(url,user,pwd); //建立Connection物件
    stmt = dbCon.createStatement(); //建立Statament物件
    int flag = stmt.executeUpdate(sql); //表格中插入資料
    if(flag != 0)
    {
    	 out.println("<script>alert('預約成功！');history.go(-1);</script>"); //彈出提示小視窗顯示預約成功,點確認後回到上一頁
    }
    else
    {
    	 out.println("<script>alert('預約失敗！');history.go(-1);</script>"); //彈出提示小視窗顯示預約失敗,點確認後回到上一頁
    }
    stmt.close(); 
    dbCon.close(); 
    %>
    
    
  </body>

</html>
