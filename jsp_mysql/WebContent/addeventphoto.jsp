<%@page import="com.sun.xml.internal.bind.CycleRecoverable.Context"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.*"%>
<%@page import="java.util.*"%>
<%@page import="org.apache.commons.fileupload.*"%>
<%@page import="org.apache.commons.fileupload.disk.*"%>
<%@page import="org.apache.commons.fileupload.servlet.*"%>
         <%
         Object o=session.getAttribute("ename");
         String ename=String.valueOf(o);
         Connection conn=null;
         PreparedStatement pstmt = null;
         conn=robo.DBManager.getConnection();
         File file=null;
         boolean isMultipart;
         String filepath;
         int mfs=5000*1024;
         int mms=5000*1024;
         filepath="C:/Users/Richa/workspace/robo/WebContent/images/";
         isMultipart=ServletFileUpload.isMultipartContent(request);
         if(!isMultipart)
         {out.println("not uploaded");
         return;}
         DiskFileItemFactory factory=new DiskFileItemFactory();
         factory.setSizeThreshold(mfs);
         factory.setRepository(new File("C:/Users/Richa/workspace/robo/WebContent/images/"));
         ServletFileUpload upload=new ServletFileUpload(factory);
         upload.setSizeMax(mfs);
         try{
        	   
         	List fileitems=upload.parseRequest(request);
         	Iterator i=fileitems.iterator();
         	while(i.hasNext()){
         		FileItem fi=(FileItem)i.next();
         		if(!fi.isFormField())
         		{	String fname=fi.getFieldName();
         			String filename=fi.getName();
         			if(filename!="")
         			{
         			
         			String path="images/"+filename;
         			pstmt=conn.prepareStatement("insert into event_image values(?,?)");
         			pstmt.setString(2,path);
         			pstmt.setString(1,ename);
         			int j=pstmt.executeUpdate();
         			if(j==1)
         				response.sendRedirect("dashboard.jsp");
         			String contenttype=fi.getContentType();
         			boolean isinmemory=fi.isInMemory();
         			long sizeinbytes=fi.getSize();
         			if(filename.lastIndexOf("/")>=0)
         			{
         		file=new File(filepath+filename.substring(filename.lastIndexOf("/")));
         			}
         			else{
         			file=new File(filepath+filename.substring(filename.lastIndexOf("/")+1));
         			}
         			fi.write(file);
         			}
         			else{
         				response.sendRedirect("dashboard.jsp");
         			}
         		}
         	}
         }catch(Exception e)
         {
        	 %><jsp:include page="dashboard.jsp"/>
        	 <%out.println("<b><center><font color=red>Unable to upload.</font></b>");
        	 }

%>
    