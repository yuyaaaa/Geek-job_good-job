   <%@page import="java.util.*" %>
        <%
           HashMap<String,String> date = new HashMap<String,String>();
        date.put("1","AAA");
        date.put("hello","world");
        date.put("soeda","33");
        date.put("20","20");
       
        
        out.print("1:" + date.get("1"));
       
        
        %>