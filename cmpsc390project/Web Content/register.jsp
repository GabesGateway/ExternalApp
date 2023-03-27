<%@ page import = "java.sql.*"%>
<%@page import="java.util.*" %>

<%
String Fname = request.getParameter("Fname");
String Lname = request.getParameter("Lname");
String email = request.getParameter("email");
String ShippingAddress = request.getParameter("address");
String Password = request.getParameter("Password");

Random rand = new Random();
int num = rand.nextInt(900) + 100;
String s = String.valueOf(num);

String chars = "abcxyz";
char c = chars.charAt(rand.nextInt(chars.length()));


char c2 = chars.charAt(rand.nextInt(chars.length()));

String userID = c +""+ c2 + "" + s;





try{

    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/cmpsc-390project","webstudent","webstudent");

    PreparedStatement ps = conn.prepareStatement("insert into useraccount(userID, Fname, Lname, email, ShippingAddress, Password) values(?,?,?,?,?,?);");
    ps.setString(1,userID);
    ps.setString(2,Fname);
    ps.setString(3,Lname);
    ps.setString(4,email);
    ps.setString(5,ShippingAddress);
    ps.setString(6, Password);
    int x = ps.executeUpdate();
    if(x > 0){
        out.println("Registration done successfully..." + userID);
    }else{
        out.println("Registration Failed...");
    }



    PreparedStatement pss = conn.prepareStatement("insert into login(email, Password, userID) values(?,?,?);");
    pss.setString(1,email);
    pss.setString(2,Password);
    pss.setString(3,userID);
    int x2 = pss.executeUpdate();
    if(x2 > 0){
        out.println("Login data done successfully...");
    }else{
        out.println("Login data Failed...");
    }



    
}catch(Exception e){
    out.println(e);
}
%>