<%@page import="javax.servlet.http.HttpSession" %>
<%@page import="jums.JumsHelper" %>
<%
    HttpSession hs = request.getSession();
    String strName = (String)hs.getAttribute("name");
    String strYear = (String)hs.getAttribute("year");
    String strMonth =(String)hs.getAttribute("month");
    String strDay =  (String)hs.getAttribute("day");
    String strType = (String)hs.getAttribute("type");
    String strTell = (String)hs.getAttribute("tell");
    String strCom =  (String)hs.getAttribute("comment");
    
    if(strName==null){
        strName="";}
    if(strYear==null){
        strYear="----";}
    if(strMonth==null){
        strMonth="--";}
    if(strDay==null){
        strDay="--";}
    if(strType==null){
        strType="1";}
    if(strTell==null){
        strTell="";}
    if(strCom==null){
        strCom="";}
   
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMS登録画面</title>
    </head>
    <body>
    <form action="insertconfirm" method="POST">
        名前:
        <input type="text" name="name" value="<%out.print(strName);%>">
        <br><br>

        生年月日:
        <select name="year">
            <option value="<%=strYear%>" selected><%=strYear%></option>
            <%
            for(int i=1950; i<=2000; i++){ %>
            <option value="<%=i%>"> <%=i%> </option>
            <% } %>
        </select>年
        <select name="month">
            <option value="<%=strMonth%>"><%=strMonth%></option>
            <%
            for(int i = 1; i<=12; i++){ %>
            <option value="<%=i%>"><%=i%></option>
            <% } %>
        </select>月
        <select name="day">
            <option value="<%=strDay%>"><%=strDay%></option>
            <%
            for(int i = 1; i<=31; i++){ %>
            <option value="<%=i%>"><%=i%></option>
            <% } %>
        </select>日
        <br><br>

        種別:
        <br>
        <input type="radio" name="type" value="1" <% if(strType.equals("1")){out.print("checked");}%> checked>エンジニア<br>
        <input type="radio" name="type" value="2" <% if(strType.equals("2")){out.print("checked");}%> >営業<br>
        <input type="radio" name="type" value="3" <% if(strType.equals("3")){out.print("checked");}%> >その他<br>
        <br>

        電話番号:
        <input type="text" name="tell" value="<%out.print(strTell);%>">
        <br><br>

        自己紹介文
        <br>
        <textarea name="comment" rows=10 cols=50 style="resize:none" wrap="hard" > <%out.print(strCom);%> </textarea><br><br>

        <input type="hidden" name="ac"  value="<%= hs.getAttribute("ac")%>">
        <input type="submit" name="btnSubmit" value="確認画面へ">
    </form>
        <br>
        <%=JumsHelper.getInstance().home()%>
    </body>
</html>
