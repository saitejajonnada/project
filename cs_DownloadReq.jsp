<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import ="java.util.*"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<%@ include file="connect.jsp" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Cloud </title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-georgia.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {font-size: 24}
.style2 {padding:0; margin:0; width:100%; line-height:0; clear: both;}
.style3 {font-size: 36px; }
.style21 {font-size: 14px}
.style28 {font-weight: bold; font-size: 14px;}
.style29 {
	color: #FF0000;
	font-size: 24px;
	font-weight: bold;
}
.style30 {color: #FFFF00}
.style31 {font-size: 14px; color: #FFFF00; font-weight: bold; }
.style33 {color: #FF0000; font-weight: bold; }
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="C_Main.jsp">CLOUD</a></li>
          <li><a href="C_Login.jsp">LOGOUT</a></li>
        </ul>
      </div>
      <div class="logo">
        <h1 class="style3 style29">A Lightweight Secure Auditing Scheme for Shared Data in Cloud Storage</h1>
      </div>
      <div class="clr style1"></div>
      <div class="slider style1">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" /> </a> </div>
        <div class="style2"></div>
      </div>
      <div class="clr style1"></div>
    </div>
  </div>
  <div class="content style1">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2>View Download Requests </h2>
          <p class="infopost">&nbsp;</p>
          <div class="style2"></div>
          <div class="img">
            <div align="justify"></div>
          </div>
          <div class="post_content">
          
            <table width="631" border="1.5" style="border-collapse:collapse" cellpadding="0" cellspacing="0" align="left">
              <tr>
                <td width="71" height="30" bgcolor="#FF0000"><div align="center" class="style21 style30"><strong> ID </strong></div></td>
                <td width="112" bgcolor="#FF0000"><div align="center" class="style31">User Name </div></td>
                <td width="112" bgcolor="#FF0000"><div align="center" class="style31">Data Owner </div></td>
                <td width="121" bgcolor="#FF0000"><div align="center" class="style31"><span class="style28">File Name </span></div></td>
                <td width="169" bgcolor="#FF0000"><div align="center" class="style31">Permission</div></td>
                <%	  
			  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;

      	try 
	{
      		String query="select * from request "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		i=rs.getInt(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
		s4=rs.getString(4);
		s5=rs.getString(5);
		
		%>
              </tr>
              <tr>
                <td height="28"><div align="center" class="style33"><%=i%></div></td>
                <td><div align="center" class="style33"><%=s2%></div></td>
                <td><div align="center" class="style33"><%=s3%></div></td>
                <td><div align="center" class="style33"><%=s4%></div></td>
                <%	
			if(s5.equalsIgnoreCase("Requested"))
			{
			
		%>
                <td><div class="style33">
                    <div align="center"><a href="cs_ProvideDownPer1.jsp?usid=<%=i%>"><%=s5%></a></div>
                </div></td>
                <%
		
			}
			else if(s5.equalsIgnoreCase("No"))
			{
			
		%>
                <td><div class="style33">
                    <div align="center">Not Requested</div>
                </div></td>
                <%
		
			}
			else
			{
		%>
                <td width="17"><div class="style33">
                    <div align="center"><%=s5%></div>
                </div></td>
              </tr>
              <%
			  }
	  }
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
            </table>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p align="right"><a href="cs_main.jsp">Back</a></p>
          </div>
          <div class="style2"></div>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star">&nbsp;</h2>
          <ul class="sb_menu">
            <li></li>
          </ul>
        </div>
      </div>
      <div class="style2"></div>
    </div>
  </div>
  <div class="fbg style1">
    <div class="fbg_resize">
      <div class="style2"></div>
    </div>
  </div>
  <div class="footer style1">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center class="style1"></div>
</body>
</html>
