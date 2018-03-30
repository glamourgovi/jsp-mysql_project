<%@ page import ="java.util.*" %>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.mail.*" %>
<%@ page import ="javax.mail.internet.*" %>
<%!String str; %>
<%
String uid = request.getParameter("uid");
session.setAttribute("uid",uid);
        final String username="richa151997@gmail.com";
        final String password="mumy@1234";
        
        
        Connection con=robo.DBManager.getConnection();
   	    PreparedStatement ps = con.prepareStatement("select * from admin where id= (?)");
   	    ps.setString(1,uid);
        ResultSet rs= ps.executeQuery();
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
        	Random r=new Random();
        	int otp=r.nextInt(900000)+100000;
        	session.setAttribute("otp",otp);
            Message msg=new MimeMessage(ss);
            msg.setFrom(new InternetAddress("richa151997@gmail.com"));
            msg.setRecipients(Message.RecipientType.TO,InternetAddress.parse(uid));
            msg.setSubject("Forgot Password");
            msg.setContent("Dear Mail Crawler,Your OTP is:"+otp+"<br>Please Login and Reset Password<br>Team Robogenesis.","text/html; charset=utf-8");
            
            Transport.send(msg);
            response.sendRedirect("otp.jsp"); 
            }
        catch(Exception ee){
        	%><jsp:include page="fgtpwd.jsp"/>
            <%out.println("<b><center><font color=red>Unable to send email.</font></b>");
              
        }
        }
        else{
        	%><jsp:include page="fgtpwd.jsp"/>
            <%out.println("<b><h3><center><font color=red>Invalid email.</font></b>");
        	
        }
   %>