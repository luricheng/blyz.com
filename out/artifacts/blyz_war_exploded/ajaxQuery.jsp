<%--
  Created by IntelliJ IDEA.
  User: lu
  Date: 18-3-12
  Time: 下午3:53
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%
    request.setCharacterEncoding("utf-8");

    String opt = request.getParameter("opt");
    try{
        //在数据库中查询
        Class.forName("com.mysql.jdbc.Driver");
        String url="jdbc:mysql://localhost:3306/BLYZ";
        String username="root";
        String password="88";
        Connection con= DriverManager.getConnection(url,username,password);
        if(opt.equals("checkAccount")){
                String account =request.getParameter("id");
                String sql="select * from ACCOUNT where ID=?";
                PreparedStatement ps=con.prepareStatement(sql);
                ps.setString(1,account);
                ResultSet rs=ps.executeQuery();
                out.print(rs.next()?1:0);
                rs.close();
                ps.close();
        }
        if(opt.equals("checkTel")){
            String tel =request.getParameter("tel");
            String sql="select * from ACCOUNT where TEL=?";
            PreparedStatement ps=con.prepareStatement(sql);
            ps.setString(1,tel);
            ResultSet rs=ps.executeQuery();
            if(rs.next()){
              out.print(1);
            }
            else{
              out.print(0);
            }
            rs.close();
            ps.close();
        }
        con.close();
    } catch (ClassNotFoundException e){
        e.printStackTrace();
    }
    catch (SQLException e){
        e.printStackTrace();
    }
    /*
    String account=request.getParameter("id");
    try{
        //在数据库中查询
        Class.forName("com.mysql.jdbc.Driver");
        String url="jdbc:mysql://localhost:3306/BLYZ";
        String username="root";
        String password="88";
        Connection con= DriverManager.getConnection(url,username,password);
        String sql="select * from ACCOUNT where ID=?";
        PreparedStatement ps=con.prepareStatement(sql);
        ps.setString(1,account);
        ResultSet rs=ps.executeQuery();
        out.print(rs.next()?1:0);
        rs.close();
        ps.close();
        con.close();
    } catch (ClassNotFoundException e){
        e.printStackTrace();
    }
    catch (SQLException e){
        e.printStackTrace();
    }*/
%>