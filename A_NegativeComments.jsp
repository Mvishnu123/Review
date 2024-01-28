<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by Free CSS Templates
http://www.freecsstemplates.org
Released for free under a Creative Commons Attribution 2.5 License

Name       : Throughout 
Description: A two-column, fixed-width design for 1024x768 screen resolutions.
Version    : 1.0
Released   : 20100423

-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Negative Comments On Post..</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<script type="text/javascript" src="jquery/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="jquery/jquery.slidertron-0.1.js"></script>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
@import "slidertron.css";
.style1 {
	font-size: 23px;
	font-weight: bold;
	color: #00FF00;
}
.style11 {color: #FF00FF;
	font-weight: bold;
}
.style35 {font-size: 25px}
.style83 {color: #009900}
.style88 {color: #FFFFFF}
.style89 {font-family: "Courier New", Courier, monospace}
.style90 {font-size: 13px}
.style91 {color: #FF33FF}
.style93 {color: #FF9900}
.style94 {
	color: #FF0000;
	font-weight: bold;
}
.style36 {font-size: 25px; color: #FF00FF; }
</style>
</head>
<body>
<!-- end #header-wrapper -->
<div class="style1" id="logo">
	Mining Users Trust From E Commerce Reviews Based On Sentiment Similarity Analysis</div>
<div id="header">
	<div id="menu">
		<ul>
			<li><a href="index.html" class="first">Home</a></li>
			<li class="current_page_item"><a href="UserLogin.jsp"> User </a></li>
			<li><a href="AdminLogin.jsp">Admin</a></li>
		</ul>
	</div>
	<!-- end #menu -->
	<div id="search">
		<form method="get" action="">
			<fieldset>
				<input type="text" name="s" id="search-text" size="15" />
			</fieldset>
		</form>
	</div>
	<!-- end #search -->
</div>
<!-- end #header -->
<hr />
<!-- end #logo -->
<div id="slideshow">
	<!-- start -->
	<div id="foobar">
		<div id="col1"><a href="#" class="previous">&nbsp;</a></div>
		<div id="col2">
			<div class="viewer">
				<div class="reel">
					<div class="slide"><img src="images/img04.jpg" width="726" height="335" alt="" /> <span>Brand-Related Microblogs..</span> </div>
					<div class="slide"><img src="images/img07.jpg" width="726" height="335" alt="" /> <span>Social-Smooth Multiview Embedding..</span> </div>
					<div class="slide"><img src="images/img08.jpg" width="726" height="335" alt="" /> <span>Social Media Platforms..</span> </div>
				</div>
			</div>
		</div>
		<div id="col3"><a href="#" class="next">&nbsp;</a></div>
	</div>
	<script type="text/javascript">

						$('#foobar').slidertron({
							viewerSelector:			'.viewer',
							reelSelector:			'.viewer .reel',
							slidesSelector:			'.viewer .reel .slide',
							navPreviousSelector:	'.previous',
							navNextSelector:		'.next',
							navFirstSelector:		'.first',
							navLastSelector:		'.last'
						});
						
					</script>
	<!-- end -->
</div>
<div id="page">
	<div id="page-bgtop">
		<div id="content">
			<div class="post">
			
				<h2 class="title"><a href="#"><span class="style83 style35">Negative  </span></a><a href="#" class="style36"><span class="style36 style35">Reviews</span></a><a href="#"><span class="style83 style35"> on Post <span class="style91"><%=request.getParameter("p_Name")%></span> .. </span></a></h2>
		      <div class="entry">
<%@ include file="connect.jsp" %>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.sql.*"%>
<%
					String username=request.getParameter("username");
			
					
					try
					{
					String p_Name=request.getParameter("p_Name");
					String p_Categorie=request.getParameter("p_Categorie");
					
					
						
			%>
			      <table width="572" border="1" align="left" cellpadding="0" cellspacing="0" >
                   
                    
					 <%
						int a=0;
						String str2="select * from negcomments where p_name='"+p_Name+"'  and categorie='"+p_Categorie+"'"; 
						Statement st2=connection.createStatement();
						ResultSet rs2=st2.executeQuery(str2);
						while ( rs2.next() )
						{
							String c_user = rs2.getString(4);
							String c_comment = rs2.getString(5);
							String c_date = rs2.getString(6);
							
								if(a==0){
					%>
					 <tr>
                       <td width="123" height="24" valign="middle" style="color: #2c83b0;"><div align="left " class="style15 style11 style71 style77 style90 style93" style="margin-left:20px;">
                           <div align="center">Comment By</div>
                       </div></td>
					   <td width="347" height="24" valign="middle" style="color: #2c83b0;" columnspan="2"><div align="left " class="style15 style11 style71 style77 style90 style93" style="margin-left:20px;">
                           <div align="center">Comment Details</div>
					     </div></td>
					   <td width="94" height="24" align="center" valign="middle" style="color: #2c83b0;" columnspan="2"><div align="left " class="style15 style11 style71 style77 style90 style93" style="margin-left:20px;">
                           <div align="center">Date</div>
					     </div></td>
				    </tr>
					   <%a=1;}%>
					   <tr>
                         <td height="49"><div align="center" class="style78 style76 style10 style9 style88 style89"><strong><%= c_user%></strong></div></td>
					     <td><div align="center" class="style78 style76 style10 style9 style88 style89"><strong><%= c_comment%></strong></div></td>
					     <td><div align="center" class="style78 style76 style10 style9 style88 style89"><strong><%= c_date%></strong></div></td>
			        </tr>
					<%}%>
	            </table>
			      <p>&nbsp;</p>
			    
		         <p>&nbsp;		         </p>
			      <p>
			        <%
		
		connection.close();
	}
	catch(Exception e)
	{
		out.println(e.getMessage());
	}
%>
                </p>
			      <div align="center"><a href="A_PosNegComments.jsp" class="style11"><strong>Back</strong></a></div>
		      </div>
		  </div>
	  </div>
		<!-- end #content -->
	  <div id="sidebar">
		  <ul>
				
				  <h2>Sidebar Menu</h2>
			        <p align="center"><a href="#">Home</a></p>
                    <p align="center"><a href="index.html">Log Out</a></p>
                    <p align="center">&nbsp;</p>
                <li><h2>
                    <!-- end #sidebar -->
		</h2>
		    </li>
		  </ul>
      </div>
		<div style="clear: both;">&nbsp;</div>
	</div>
	<!-- end #page -->
</div>
<div id="footer">
	<p class="style94">Mining Users Trust From E Commerce Reviews Based On Sentiment Similarity Analysis</p>
</div>
<!-- end #footer -->
<div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a></div></body>
</html>
