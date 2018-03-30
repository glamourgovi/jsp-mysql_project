<%@ page import ="java.sql.*" %>


<% Connection con=null;
try{
	Class.forName("com.mysql.jdbc.Driver");  
	 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/robo","root","govi");
}catch(Exception ee)
{
	ee.printStackTrace();
}



PreparedStatement pstmt=null;
PreparedStatement ps1 =null;
PreparedStatement ps2 =null;
PreparedStatement ps3 =null;
PreparedStatement ps4 =null;
PreparedStatement ps5 =null;
PreparedStatement ps6 =null;
PreparedStatement ps7 =null;
PreparedStatement ps8 =null;
PreparedStatement ps9 =null;
PreparedStatement ps10 =null;
PreparedStatement ps11 =null;
PreparedStatement ps12 =null;
PreparedStatement ps13 =null;
PreparedStatement ps14 =null;
PreparedStatement ps15 =null;
PreparedStatement ps16 =null;
PreparedStatement ps17 =null;
PreparedStatement ps18 =null;
PreparedStatement ps19 =null;
PreparedStatement ps20 =null;
PreparedStatement ps21 =null;
PreparedStatement ps22 =null;
PreparedStatement ps23 =null;
PreparedStatement ps24 =null;
PreparedStatement ps25 =null;
PreparedStatement ps26 =null;
ResultSet rs=null;
    ResultSet rs1=null;
    ResultSet rs2=null;
    ResultSet rs3=null;
    ResultSet rs4=null;
    ResultSet rs5=null;
    ResultSet rs6=null;
    ResultSet rs7=null;
    ResultSet rs8=null;
    ResultSet rs9=null;
    ResultSet rs10=null;
    ResultSet rs11=null;
    ResultSet rs12=null;
    ResultSet rs13=null;
    ResultSet rs14=null;
    ResultSet rs15=null;
    ResultSet rs16=null;
    ResultSet rs17=null;
    ResultSet rs18=null;
    ResultSet rs19=null;
    ResultSet rs20=null;
    ResultSet rs21=null;
    ResultSet rs22=null;
    ResultSet rs23=null;
    ResultSet rs24=null;
    ResultSet rs25=null;
    ResultSet rs26=null;
    ResultSet set=null;
    
    Object o=session.getAttribute("uid");
    String uid=String.valueOf(o);
    ps24=con.prepareStatement("select * from authorisation where id=(?)");
    ps24.setString(1,uid);
    rs24=ps24.executeQuery();
    if(rs24.next()){
    	%>
    	<input type=hidden name=t value="<%=rs24.getString(2)%>">
    	<input type=hidden name=pi value="<%=rs24.getString(3)%>">
    	<input type=hidden name=pu value="<%=rs24.getString(4)%>">
    	<input type=hidden name=pd value="<%=rs24.getString(5)%>">
    	<input type=hidden name=gi value="<%=rs24.getString(6)%>">
    	<input type=hidden name=gd value="<%=rs24.getString(7)%>">
    	<input type=hidden name=ei value="<%=rs24.getString(8)%>">
    	<input type=hidden name=ed value="<%=rs24.getString(9)%>">
    	<input type=hidden name=ti value="<%=rs24.getString(10)%>">
    	<input type=hidden name=tu value="<%=rs24.getString(11)%>">
    	<input type=hidden name=td value="<%=rs24.getString(12)%>">	
   <% }
    Object o1=session.getAttribute("pwd");
    String pwd=String.valueOf(o1);
    
    pstmt=con.prepareStatement("select * from admin where id=(?) and pwd=(?)");
    pstmt.setString(1,uid);
    pstmt.setString(2,pwd);
    rs = pstmt.executeQuery();
    if(rs.next())
    {
	    	
    	
    %>
    <html>
    <head>
    <title>Hello, world!</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/adminstyle.css">
    <link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.css">
    <script src="js/bootstrap.js"></script>
    <script src="js/jquery-3.2.1.min.js"></script>
     <script src="js/noback.js"></script>
     
  </head>
    <BODY onload="checkCookie()"
    onpageshow="if (event.persisted) noBack();" onunload="">
        <div class="navbar">
            <div class="row">
            <div class="col-md-2"><h3>Robogenesis</h3></div>
            <div class="col-md-8" id="nav2">
                <ul><% if(rs.getString(6).equals("Super Admin")){ %>
                    <li><a href="addad.jsp">Add Admin</a></li>
                    <li><a href="deladmin.jsp">Delete Admin</a></li>
                    <%} %>
                    <li><a href="editdetails.jsp">Edit Deatils</a></li>
                    <li><a href="cngpwd.jsp">Change password</a></li>
                </ul>    
            </div>
            <div class="col-md-2" id="user">
                <ul>
                    <li id=proimg><img src="<%=rs.getString(5) %>"></li>
                    <li><%=rs.getString(3) %><br>
                    
                        <a href="logout.jsp">Logout</a>
                    </li>
                </ul>
            </div>
            </div>
        </div>
        <div class="dash">
            <div class="row">
            <div class="menu col-sm-2">
                <ul>
                    <li id="project1" class="side" onclick="setColorCookie('project')">Project</li>
                    <li id="team1" class="side" onclick="setColorCookie('team')">Our Team</li>
                    <li id="gallery1" class="side" onclick="setColorCookie('gallery');">Gallery</li>
                    <li id="event1" class="side" onclick="setColorCookie('event')">Event</li>
                    <li id="testimonial1" class="side" onclick="setColorCookie('testimonial')">Testimonial</li>
                </ul>    
            </div>
                 
 <!-- Project Dashboard...........-->      
                
                
                
            <div class="content col-sm-10">
                <div id="project" class="project container-fluid">
                    <div class="row dis">
                    
                        
                        
                        
<!-- Show project Details in table-->
                       <%
                ps2=con.prepareStatement("select * from project");
                      rs2=ps2.executeQuery();
                      
                %>
                
                        
                    <div class="col-md-6">   
                    <table border="1px">
                        <tr>
                            <th>ProjectName</th>
                            <th>Catagory</th>
                        </tr>
                        <% while(rs2.next()){%>
                        <tr>
                            <td><%=rs2.getString(3) %></td>
                            <td><%=rs2.getString(2) %></td>
                        </tr>
                        <%} %>
                    </table>
                    </div>
                    
                    
                    
                    <div class="col-md-3" id="pimg">
                        <center>
                            <h3>ImageUpload</h3>
                        </center>
                                <table>
                                    <form name="" method=post action=dashboard.jsp>
                                    <%
                ps13=con.prepareStatement("select project_name from project");
                      rs13=ps13.executeQuery();
                      
                %>
                                    <tr>
                                        <td id="imgname">
                                        <select name=name>
                                        <%while(rs13.next()){%>
                                            <option><%=rs13.getString(1)%></option>
                                            <%} %>
                                            </select>
                                            
                                        </td>
                                        <td><input type=submit value="Choose Project"></td>
                                        
                                    </tr>
                                    </form>
                                     <form action="addphoto.jsp" method="post" name="" enctype="multipart/form-data" >
                                     <%String pname=request.getParameter("name");
                                     session.setAttribute("name",pname);
                                     %>
                                    <tr>
                                        <td id="imgfile"><input type="file" name="myim"></td>
                                    </tr>
                                    <tr>
                                        <td id="imgupload"><input type="submit" value="Upload"></td>
                                    </tr>
                                    </form>
                                </table>
                        </div> 
                        
                        
                        
<!--Insert and Delete Project Type-->
                        
                        
                        
                    <div class="col-md-3" id="ptype">
                        <center>
                            <h3>Project Type</h3>
                        </center>
                                <table>
                                    <form action="addprotype.jsp" method="post" name="">
                                    
                                    <tr class="clr1">
                                        <td><input type="text" name="t1" placeholder="Project Type"></td>
                                        <td class="teamcont"><input type="submit" value="Insert" name=t1></td>
                                        
                                    </tr>
                                    </form>
                                    
                                    <form action=delprotype.jsp method=post>
                                    <%
                					ps11=con.prepareStatement("select * from project_type");
                      				rs11=ps11.executeQuery();
                      
                						%>					
                                    <tr class="clr2">
                                        <td>
                                        <select name=t2>
                                        <%while(rs11.next()){ %>
                                            <option><%=rs11.getString(2) %></option>
                                            <%} %> </select></td>
                                            
                                            </select>
                                        </td>
                                        <td><input type="submit" value="Delete"></td>
                                    </tr>
                                    </form>
                                    
                                    
                                    
                                     <form action="dashboard.jsp" method="post" name="">
                                    <tr class="clr3">
                                    <%
                					ps3=con.prepareStatement("select * from project_type");
                      				rs3=ps3.executeQuery();
                      
                						%>					
                                    <tr class="clr2">
                                        <td>
                                        <select name=p>
                                        <%while(rs3.next()){ %>
                                            <option><%=rs3.getString(2) %></option>
                                            <%} %> </select></td>
                            <td><input type=submit name=search value="Choose"></td>
                            <%String p=request.getParameter("p");
                            session.setAttribute("p",p); %>
                                    </tr>
                                    </form>
                                    <form action=upprotype.jsp method=post>
                                    
                                    <tr class="clr3">
                                    <%String s=request.getParameter("p");
                                    ps12=con.prepareStatement("select * from project_type where Type=(?)");
                                    ps12.setString(1,s);
                                    rs12=ps12.executeQuery();
                                    while(rs12.next()){
                                    int n=rs12.getInt(1);
                                    session.setAttribute("n",n);%>
                                     
                                    <td class="teamcont"><input type=text  name=e1 value="<%=rs12.getString(2)%>"></td>
                                        
                                        <%} %>
                                        
                                        <td class="teamcont"><input type="submit" value="Update"></td>
                                    </tr>
                                    </form>
                                </table>
                                
                    </div>
                    </div>
                    <div class="cont container">
                        <div class="row">
                            
      
<!--Insert Project............-->
                                     
                            <div class="col-lg-4" id="pinsert">
                                <center>
                                    <h3>Insert Data</h3>
                                </center>
                                <table>
                                    <form action="addproject.jsp" method="post" name="pinsert">
                                    <tr>
                                    <%
                					ps4=con.prepareStatement("select * from project_type");
                      				rs4=ps4.executeQuery();
                      
                					%>
                                        <td>Project Type</td>
                                        <td><select name=t1>
                                            <%while(rs4.next()){ %>
                                            <option><%=rs4.getString(2) %></option>
                                            <%} %></select></td>
                                    </tr>
                                    <tr>
                                        <td>Name</td>
                                        <td><input type="text" name="t2"></td>
                                    </tr>
                                    <tr>
                                        <td class="teamcont">About</td>
                                        <td class="teamcont"><textarea rows="4" name=t3></textarea></td>
                                    </tr>
                                    <tr>
                                        <td class="teamcont"><input class="cncl1" type="reset" value="Cancel"></td>
                                        <td class="teamcont"><input type="submit" value="Insert"></td>
                                    </tr>
                                    </form>
                                </table>
                            </div>
                            
                            
                            
<!--Update Project............-->
                            
                            
                            
                            
                            
                            
                            <div class="col-lg-4" id="pupdate">
                                <center>
                                    <h3>Update Data</h3>
                                </center>
                                <table>
                                    <form action="dashboard.jsp" method="post" >
                                       <tr>  <%
                						ps8=con.prepareStatement("select * from project_type");
                     					 rs8=ps8.executeQuery();
                      
               							 %>
                                        <td>Project Type</td>
                                        <td><select name=t1>
                                            <%while(rs8.next()){ %>
                                            <option><%=rs8.getString(2) %></option>
                                            <%} %></select><br>
                                            <input type="submit" value="Choose Type"></td>
                                    </form>
                                   <form action=dashboard.jsp method=post>
                         			<tr><%String type1=request.getParameter("t1");
                                     	 ps9=con.prepareStatement("select * from project where project_type=(?)");
                                     	 ps9.setString(1,type1);
                                     	 rs9=ps9.executeQuery();
                                     	%>
                                        <td>Name</td>
                                        <td><select name=t2>
                                        <%while(rs9.next()){ %>
                                            <option><%=rs9.getString(3) %></option>
                                            <%} %>
                                            </select><br>
                                            <input type="submit" value="Choose Name"></td>
                                    
                                    </form>
                                    <form action=uppro.jsp method=post>
                                    <%   String name=request.getParameter("t2");
                                     	 ps10=con.prepareStatement("select * from project where project_name=(?)");
                                     	 ps10.setString(1,name);
                                     	 rs10=ps10.executeQuery();
                                     	while(rs10.next()){
                                     	int n=rs10.getInt(1);
                                     	session.setAttribute("n",n);%> 
                                    <tr>
                                        <td class="teamcont">Edit Name</td>
                                        
                                        <td class="teamcont"><input type="text" name="e1" value="<%=rs10.getString(3) %>"></td>
                                    </tr>
                                    <tr>
                                         <td class="teamcont">Edit About</td>
                                        <td class="teamcont"><input type=text name=e2 value=<%=rs10.getString(4) %>></td>
                                    </tr>
                                    <%} %>
                                    <tr>
                                        <td class="teamcont"><input class="cncl1" type="reset" value="Cancel"></td>
                                        <td class="teamcont"><input type="submit" value="Update"></td>
                                    </tr>
                                    </form>
                                </table>
                            </div>
                            
                            
                            
<!--Delete Project..................-->
                            
                            
                            
                            <div class="col-lg-4" id="pdelete">
                                <center>
                                    <h3>Delete Data</h3>
                                </center>
                                <table>
                                    <form action="dashboard.jsp" method="post" name="pinsert">
                                    <tr>
                                      <%
                						ps6=con.prepareStatement("select * from project_type");
                     					 rs6=ps6.executeQuery();
                      
               							 %>
                                        <td>Project Type</td>
                                        <td><select name=t1>
                                            <%while(rs6.next()){ %>
                                            <option><%=rs6.getString(2) %></option>
                                            <%} %></select></td>
                                    </tr>
                                    <tr>
                                    	<td></td>
                                    	<td><input type="submit" value="Choose Type"></td>
                                    </form>
                                    <form action="deleteproject.jsp" method="post" name="">
                                    <tr>
                                        <td>Name</td>
                                        <td><select name=t2>
                                        <%
                                        try
                             		   {
										String type=request.getParameter("t1");
                                     	 ps7=con.prepareStatement("select * from project where project_type=(?)");
                                     	 ps7.setString(1,type);
                                     	 rs7=ps7.executeQuery();
                                     	 
                             		  		 
                             		   }
                             		   catch(Exception e)
                             		   {
                             			   e.printStackTrace();
                             		   }
                                        
                                            while(rs7.next()){ %>
                                            <option><%=rs7.getString(3) %></option>
                                            <%} %></select></td>
                                    </tr>
                                    <tr>
                                    
                                        <td class="teamcont"><input class="cncl1" type="reset" value="Cancel"></td>
                                        <td class="teamcont"><input type="submit" value="Delete"></td>
                                    </tr>
                                    </form>
                                </table>
                            </div>
                        </div>
                        
                    </div>  
                </div>
                
                
                
                
                
 <!-- Team Dashboard..................-->
                
                
                <div id=team class="team container-fluid">
                    <div class="row trow">
                    
                        
                        
                        
<!-- Show Team member in table-->
                        
                        
                    <div class="col-md-8">
                     <table border="1px">
                       <tr>
                            <th>Team Member</th>
                            <th>Position</th>
                        </tr>
                        
                    <% ps14=con.prepareStatement("select name,post,email from team");
                      rs14=ps14.executeQuery();
                      while(rs14.next())
                      {%>   
                        
                        <tr>
                            <td><%=rs14.getString(1)%></td>
                            
                            <td><%=rs14.getString(2) %></td>
                            </tr>
                            
                       <%} %>
                    </table>
                    </div>
                                
                    </div>
                    <div class="row trow2">
                        
                        
<!-- Insert Team Member................-->
                        
                        
                        <div class="col-md-4" id="tinsert">
                            <table>
                                <center><h3>Insert Member</h3></center>
                                <form action="addteam.jsp" method="post">
                                <tr>
                                    <td>Name</td>
                                    <td><input type="text" name="t1" value=""></td>
                                </tr>
                                <tr>
                                    <td>Position</td>
                                    <td><input type="text" name="t2" value=""></td>
                                </tr>
                                <tr>
                                    <td>Email</td>
                                    <td><input type="text" name="t3" value=""></td>
                                </tr>
                                <tr>
                                    <td>Contact</td>
                                    <td><input type="text" name="t4" value=""></td>
                                </tr>
                                <tr>
                                    <td>About</td>
                                    <td><textarea rows="3" name="t5"></textarea></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td><input type="submit" value="Insert"></td>
                                </tr>
                                </form>
                            </table>
                        </div>
                        
<!-- Delete Team Member..................-->
                        
                       <div class="col-md-4" id="tdelete">
                            <table>
                                <center><h3>Delete Member</h3></center>
                                <form action="delteam.jsp" method="post">
                                <tr>
                                    <td>Email</td>
                                    <% ps16=con.prepareStatement("select email from team");
                      					rs16=ps16.executeQuery();
                     					 %>   
                    
                                    <td><select name=s1><%while(rs16.next()){ %>
                                            <option><%=rs16.getString(1)%></option>
                                            <%} %>
                                            </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td><input type="submit" value="Delete"></td>
                                </tr>
                                </form>
                            </table>
                        </div>
                        
                        
<!-- Update Image........................-->
                                        
                        <div class="col-md-4" id="tdelete">
                            <table>
                                <center><h3>Update Image</h3></center>
                                <form action="dashboard.jsp" method="post">
                                <tr>
                                    <td>Email</td>
                     <% ps17=con.prepareStatement("select email from team");
                      					rs17=ps17.executeQuery();
                     					 %>   
                    					
                                    <td><select name=email><%while(rs17.next()){ %>
                                            <option><%=rs17.getString(1)%></option>
                                            <%} %>
                                            </select>
                                    </td>
                                </tr>
                                
                                
                                <tr>
                                    <td></td>
                                    <td><input type="submit" value="Choose Username"></td>
                                </tr>
                                </form>
                                <form action=teamphoto.jsp method=post enctype=multipart/form-data>
                                <%String email=request.getParameter("email");
                                     session.setAttribute("email",email);
                                      %>
                                <tr>
                                    <td colspan=2><input type="file" name="team"></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td><input type="submit" value="Update"></td>
                                </tr>
                                </form>
                            </table>
                        </div>
                        
        
                        
                    </div>
                    
                        
                    </div>  

<!-- Gallery Dashboard............-->
                
                
                <div id=gallery class="gallery container-fluid">
                    <form action="delgallery.jsp" method="post">
                    <div class="row grow">
                        
                        	<%ps19=con.prepareStatement("select * from  gallery");
                            
                            rs19=ps19.executeQuery();
                            while(rs19.next())
                            {
                            	
                    		%>
                            <div class="col-md-3">
                            <label>
                            <input type="radio" name="gal" value="<%=rs19.getString(1)%>" />
                            <img src="<%=rs19.getString(2)%>">
                            
                            </label>
                            </div>
                            <%} %>

     <!-- Delete Image...........-->                   
                        
                        <div class="del">
                            <input type="submit" value="Delete" >
                        </div>
                        
                    </div>
 
<!-- Insert Image------->                        
                    </form>
                    <div class="row grow2">
                        <div class="col-md-6">
                            <form action="addgallery.jsp" method="post" enctype=multipart/form-data>
                            <input type="file" name="myimg">
                            <br><br>
                            <input type="submit" value="Insert">
                            </form>
                        </div>
                    </div>
                    
                </div> 
                        
                
            
            <!-- Event Dashboard.................-->
                
                
                <div id="event" class="event container-fluid">
                    <div class="row erow">
                        <div class="col-md-4 einsert">
                            
    <!-- Insert Event..........-->
                            <form action="addevent.jsp" method="post">
                                <table>
                                    <center><h3>Insert Event</h3></center>
                                    <tr>
                                        <td>EventName</td>
                                        <td><input type="text" name="ename"></td>
                                    </tr>
                                    <tr>
                                        <td>Place</td>
                                        <td><input type="text" name="eadd"></td>
                                    </tr>
                                    <tr>
                                        <td><input type="reset" value="Clear"></td>
                                        <td><input type="submit"name="Insert"></td>
                                    </tr>
                                </table>
                            </form>
                        </div>
                        <div class="col-md-4 eimage">
                                <table>
                                    
                                    
    <!-- Insert Event Image.........-->                        
                                    
                                    <center><h3>Insert Event image</h3></center>
                                    <form action="dashboard.jsp" method="post" >
                                    <tr>
                                        <td>EventName</td>
                                        <td><select name=event>
                                        <%ps20=con.prepareStatement("select * from event");
                                        rs20=ps20.executeQuery();
                                        while(rs20.next()){%>
                                            <option><%=rs20.getString(2) %></option>
                                            <%} %>
                                            </select>
                                    </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><input type="submit" value="Choose Name"></td>
                                    </tr>
                                    </form>
                                    <form action="addeventphoto.jsp" method="post" enctype=multipart/form-data>
                                    <%String ename=request.getParameter("event");
                                    session.setAttribute("ename",ename); %>
                                    <tr>
                                        <td colspan="2"><input type="file" name="eve"></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><input type="submit" name="Insert"></td>
                                    </tr>
                                    </form>
                                </table>
                            
                        </div>
                        <div class="col-md-4 edelete">
                                <table>
                                    
                                    
    <!-- Delete Event .........-->                        
                                    
                                    <center><h3>Delete Event</h3></center>
                                    <form action="delevent.jsp" method="post">
                                    <tr>
                                        <td>EventName</td>
                                        <td><select name=eve>
                                        <%ps21=con.prepareStatement("select * from event");
                                        rs21=ps21.executeQuery();
                                        while(rs21.next()) {%>
                                            <option><%=rs21.getString(2) %></option>
                                            <%} %>
                                            </select>
                                    </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><input type="submit" value="Delete"></td>
                                    </tr>
                                    </form>
                                </table>
                            
                        </div>
                    </div>
                </div> 
                
                
                
                
                
<!-- Testimonial Dashboard...........-->
                
                
                <div id="testimonial" class="testimonial container-fluid">
                    <form action="test.jsp" name="">
                    <div class="row trow">   
                    <table border="1px">
                        <center><h4>User Data</h4></center>
                        <tr>
                            <th>Content</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Select</th>
                            <th>Reply</th>
                        </tr>
                        
                         <%ps22=con.prepareStatement("select * from test1");
                                        rs22=ps22.executeQuery();
                                        while(rs22.next()) {%>
                        <tr>               
                            <td><%=rs22.getString(4) %></td>
                            <td><%=rs22.getString(2) %></td>
                            <td><%=rs22.getString(3) %></td>
                            <td><input type="checkbox" name="id" value="<%=rs22.getString(3) %>"></td>
                            <td><input type="text"  name="<%=rs22.getString(3)%>"></td>
                        </tr>
                        <%} %>
                        
                    </table>
                    </div>
                    <div class="trow2" id="trow2">
                        <table>
                            <tr>
                                <td></td>
                                <td><input type=submit value=Import></td>
                            </tr>
                        </table>
                    </div>
                    </form>
                    <div class="row trow">   
                    <table border="1px">
                        <center><h4>AdminData</h4></center>
                        <tr>
                            <th>Content</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Reply</th>
                        </tr>
                         <%ps23=con.prepareStatement("select * from test2");
                                        rs23=ps23.executeQuery();
                                        while(rs23.next()) {%>
                        
                        <tr>
                            <td><%=rs23.getString(4) %></td>
                            <td><%=rs23.getString(2) %></td>
                            <td><%=rs23.getString(3) %></td>
                            <td><%= rs23.getString(5)%></td>
                        </tr>
                        <%} %>
                    </table>
                    </div>
                </div>    
            </div>
            </div>	
        </div>
        
                
              
              <div class="profileimg" id="profile">
            <form action="addadmin2.jsp" method="post" enctype=multipart/form-data>
                <table>
                    <tr>
                        <td colspan="2"><input type="file" name="updatephoto"></td>
                    </tr>
                    <tr>
                        <td><input type="reset" value="Cancel" id="imgcncl"></td>
                        <td><input type="submit" value="Update"></td>
                    </tr>
                </table>
            </form>
        </div>
          
            
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script type="application/javascript" src="js/adminaction.js"></script>
        <script>
           var gg;
            
         window.onload = function ()
    {
            var nameValueArray=document.cookie.split("=");
            gg = nameValueArray[1];
             document.getElementById(gg+"1").classList.add("active");
             document.getElementById(gg).classList.add("active2");
    }

    function setColorCookie(v)
    {
        
            document.cookie = "color=" +v;

    }

        </script>
    </body>
</html>
<% }
else{
			response.sendRedirect("admin.jsp");
			}
			%>