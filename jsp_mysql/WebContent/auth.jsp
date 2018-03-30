
<%@ page import ="java.sql.*" %>
<%
PreparedStatement ps=null;
int k=0;
ResultSet rs=null;
String reply=null;
Object o=session.getAttribute("email");
String email=String.valueOf(o);
String pi="n";
String pu="n";
String pd="n";

String ei="n";
String ed="n";


String gi="n";
String gd="n";

String t="n";

String ti="n";
String tu="n";
String td="n";

Connection con=robo.DBManager.getConnection();

    
String select[] = request.getParameterValues("id"); 
if (select != null && select.length != 0) {
	
for (int i = 0; i < select.length; i++) {
	if(select[i].equals("iproject"))
	pi="y";
	if(select[i].equals("uproject"))
		pu="y";
		
	if(select[i].equals("dproject"))
		pd="y";
		
	if(select[i].equals("testimonial"))
		
	t="y";
	
	if(select[i].equals("igallery"))
	gi="y";

	if(select[i].equals("dgallery"))
		gd="y";
		
	if(select[i].equals("ievent"))
	
	ei="y";
	if(select[i].equals("devent"))
		
		ed="y";
		
	if(select[i].equals("iteam"))
		
	ti="y";

	if(select[i].equals("uteam"))
		
		tu="y";
		
	if(select[i].equals("dteam"))
		
		td="y";
		
	
}
ps = con.prepareStatement("insert into authorisation values(?,?,?,?,?,?,?,?,?,?,?,?)");
ps.setString(1,email);
ps.setString(2,t);
ps.setString(3,pi);
ps.setString(4,pu);
ps.setString(5,pd);
ps.setString(6,gi);
ps.setString(7,gd);
ps.setString(8,ei);
ps.setString(9,ed);
ps.setString(10,ti);
ps.setString(11,tu);
ps.setString(12,td);


int j=ps.executeUpdate();
if(j==1)
{%><jsp:include page="addad.jsp"/>
	<%out.println("<b><center><font color=greenyellow>Admin added successfully.</font></b>");
	}
}

	
%>