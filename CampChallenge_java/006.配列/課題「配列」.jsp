 <%@page import="java.util.ArrayList" %>
        <%
           ArrayList<String> date = new ArrayList<String>();
        date.add("10");
        date.add("100");
        date.add("soeda");
        date.add("hayashi");
        date.add("-20");
        date.add("118");
        date.add("END");
        out.print(date.get(0));
        out.print(date.get(1));
        out.print(date.get(2));
        out.print(date.get(3));
        out.print(date.get(4));
        out.print(date.get(5));
        out.print(date.get(6));
        %>