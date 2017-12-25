<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page language="java" import="com.blog.dao.UserDao,com.blog.dto.User" %>

<% 
  String   username = "";
  String   password = "";
  String   subject = "";
  String   email = "";

  
  String   id = request.getParameter("id"); 


  UserDao  dao = new UserDao();
  
   User  l =  dao.getLink(id);  
   int   blogid = l.getId();
         username = l.getUsername();
         password = l.getPassword();
         subject = l.getSubject();
         email =l.getEmail();
       
         
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>内容页面</title>
    <link href="Css/Style.css" rel="stylesheet" type="text/css" />
  </head>
  
  <body>
      <form  action="/BlogVer1_0/user" method="post">
       <table width="100%" cellpadding="0" class="Table1" bordercolor="#4ab902" border="1" cellspacing="0">
        <tr>
          <td height="25" align="right">用户名：：<input  type="hidden" id="id" name="id" value="<%=id %>" >
          <input  type="hidden" id="blogid" name="blogid" value="<%=blogid %>" >
          <input  type="hidden" id="action" name="action" value="update" ></td>
          <td><input type="text" id="username" name="username" value="<%=username%>" ></td>
        </tr>
        <tr>
        <td height="25" align="right">密码：
          <td><input type="text" id="password" name="password" value="<%=password%>" ></td>
        </tr>
         <td height="25" align="right">博客主题：<input  type="hidden" id="image" name="image" value="image/default.jpg" ></td>
          <td><input type="text" id="subject" name="subject" value="<%=subject%>" ></td>
        </tr>
         <td height="25" align="right">email：
          <td><input type="text" id="email" name="email" value="<%=email%>" ></td>
        </tr>
         
        
        
        <tr>
          <td height="25" align="right">&nbsp;</td>
          <td><input type="submit" value="提交" name="Submit"></td>
        </tr>
      </table>
      </form>
      
  </body>
</html>
