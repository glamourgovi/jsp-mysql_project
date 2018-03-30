<%@ page import ="java.sql.*" %>
<%@ page import ="java.util.*" %>
    	
    	<%@ page import ="javax.mail.*" %>
    	<%@ page import ="javax.mail.internet.*" %>
    	
<%
String name= request.getParameter("a1");
String email= request.getParameter("a2"); 
session .setAttribute("email",email);
String p1 = request.getParameter("a3");
String p2 = request.getParameter("a4");
String mob = request.getParameter("a5");
String pos = request.getParameter("a6");
session .setAttribute("pos",pos);
    
    Connection con=robo.DBManager.getConnection();
    if(p1.equals(p2))
    {
    PreparedStatement ps = con.prepareStatement("insert into admin values(?,?,?,?,?,?)");
     ps.setString(1,email);
     ps.setString(2,p1);
     ps.setString(3,name);
     ps.setString(4,mob);
     ps.setString(5,null);
     ps.setString(6,pos);
    int i=ps.executeUpdate();
    if (i==1) {
    	
    	//email
    	
    	
    	        final String username="richa151997@gmail.com";
    	        final String password="mumy@1234";
    	        
    	        
    	        
    	   	    PreparedStatement ps1 = con.prepareStatement("select * from admin where id= (?)");
    	   	    ps1.setString(1,email);
    	        ResultSet rs= ps1.executeQuery();
    	        if (rs.next()) {
    	   				Properties props=new Properties();
    	        		props.put("mail.smtp.host", "smtp.gmail.com");  
    				    props.put("mail.smtp.socketFactory.port", "465");  
    				    props.put("mail.smtp.socketFactory.class",  
    				              "javax.net.ssl.SSLSocketFactory");  
    				    props.put("mail.smtp.auth", "true");  
    				    props.put("mail.smtp.port", "465");  

    	        Session ss=Session.getInstance(props,new javax.mail.Authenticator(){
    	            protected PasswordAuthentication getPasswordAuthentication(){
    	                return new PasswordAuthentication(username,password);
    	            }
    	        });
    	        try{
    	            Message msg=new MimeMessage(ss);
    	            msg.setFrom(new InternetAddress("richa151997@gmail.com"));
    	            msg.setRecipients(Message.RecipientType.TO,InternetAddress.parse(email));
    	            msg.setSubject("New Admin");
    	            msg.setContent("Dear Mail Crawler,<br>You have been added as an admin of robogenesis with Username: your email id and Password:"+p1+".<br>Please login and change your password.<br>Regards,<br>Team Robogenesis.","text/html; charset=utf-8");
    	            Transport.send(msg);
    	             response.sendRedirect("fadmin2.jsp");
    	            }
    	        catch(Exception ee){
    	        	%><jsp:include page="addad.jsp"/>
    	            <%out.println("<b><center><font color=red>Unable to send email.</font></b>");
    	          					}
    	        }
    	        else{
    	        	%><jsp:include page="addad.jsp"/>
    	            <%out.println("<b><h3><center><font color=red>Invalid email.</font></b>");
    	        	
    	        }
    	   
    	}
    
}
else{
	
	%><jsp:include page="addad.jsp"/>
    <%out.println("<b><h3><center><font color=red>Passwords don't match.</font></b>");
	
}%>
