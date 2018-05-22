<%@page import="jums.UserDataBeans"%>
<%@page import="jums.JumsHelper"%>
<%@page import="javax.servlet.http.HttpSession" %>
<%
    HttpSession hs = request.getSession();
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMS登録確認画面</title>
    </head>
    <body>
    <% 
        UserDataBeans udb = new UserDataBeans();
        udb =(UserDataBeans)hs.getAttribute("udb");
        
        if(!udb.getName().equals("") &&
           udb.getYear()!=0 &&
           udb.getMonth()!= 0 &&
           udb.getDay()!= 0 &&
           udb.getType()!= 0 &&
          !udb.getTell().equals("") &&
          !udb.getComment().equals("")
            ){ %>
        <h1>登録確認</h1>
        名前:<%= udb.getName()%><br>
        生年月日:<%=  udb.getYear()+"年"+udb.getMonth()+"月"+udb.getDay()+"日"%><br>
        種別:<%=  udb.getType()%><br>
        電話番号:<%= udb.getTell()%><br>
        自己紹介:<%= udb.getComment()%><br>
        上記の内容で登録します。よろしいですか？
  
        <form action="insertresult" method="POST">
            <input type="hidden" name="ac"  value="<%= hs.getAttribute("ac")%>">
            <input type="submit" name="yes" value="はい">
        </form>
        
    <% }if(udb.getName().equals("")) { %>
        <h3>名前を入力して下さい</h3>
    <% }if(udb.getYear()==0) { %>
        <h3>年を入力して下さい</h3>
    <% }if(udb.getMonth()==0) { %>
        <h3>月を入力して下さい</h3>
    <% }if(udb.getDay()==0) { %>
        <h3>日を入力して下さい</h3>
    <% }if( udb.getType()==0) { %>
        <h3>種別を入力して下さい</h3>
    <% }if(udb.getTell().equals("")) { %>
        <h3>電話番号を入力して下さい</h3>
    <% }if(udb.getComment().equals("")) { %>
        <h3>自己紹介を入力して下さい</h3>
    <% } %>
        <form action="insert" method="POST">
        <input type="submit" name="no" value="登録画面に戻る">
        </form>
        <br>
        <%=JumsHelper.getInstance().home()%>
    </body>
</html>
