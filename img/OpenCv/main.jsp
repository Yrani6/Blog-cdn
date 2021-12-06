<%@page contentType="text/html;charset=gbk" import="java.util.*"%> 
<html>
     <body>
		<center>
			<%
				Random r=new Random();
				double d=r.nextDouble();
				out.print(d);
				if(d>0.5) {
			%> 
					<jsp:forward page="gt5.jsp"> 
						<jsp:param name="num" value="<%=d%>"/>
					</jsp:forward>
			<%
				}else{
			%>
					<jsp:forward page="lt5.jsp">
						<jsp:param name="num" value="<%=d%>"/>
					</jsp:forward>
			<%
				}
			%>
			<%=d%>
		</center>
	</body>
</html>
