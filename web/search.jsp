<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*,
																			 java.util.*,
																			 net.vehicle.*" errorPage="" %>
<%
ArrayList all = VehicleCommon.viewAllVehicles();
int size = all.size();
%>
<div class="header">Search Vehicle</div><br/>
<h3>View all the Vehicle.<br/></h3><br/>


<link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.4/css/jquery.dataTables.css">
<script type="text/javascript" language="javascript" src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script type="text/javascript" language="javascript" src="//cdn.datatables.net/1.10.4/js/jquery.dataTables.min.js"></script>
<table width="90%" align="center" style="border:#D22929 solid 2px;padding:5px;" border="0" id="search">
    <thead>
        <th bgcolor="#D22929" scope="col"><span class="style10">Image</span></th>
        <th bgcolor="#D22929" scope="col"><span class="style10">Vehicle</span></th>
        <th bgcolor="#D22929" scope="col"><span class="style10">Model</span></th>
        <th bgcolor="#D22929" scope="col"><span class="style10">Brand</span></th>
        <th bgcolor="#D22929" scope="col"><span class="style10">Type</span></th>
        <th bgcolor="#D22929" scope="col"><span class="style10">Price</span></th>
        <th bgcolor="#D22929" scope="col"><span class="style10">Type</span></th>
        <th bgcolor="#D22929" scope="col"><span class="style10">Dealer</span></th>
    </thead>
    <tbody>
 <%
int count =0;
for(int i=0;i<size;i++){
count=count+1;
ArrayList one=(ArrayList)all.get(i);
%>
    
        <tr>
            <td><img src="<%=(String)one.get(8)%>" width="220" height="120" /></td>
            <td> <div align="center"><%=(String)one.get(1)%></div></td>
            <td> <div align="center"><%=(String)one.get(2)%></div></td>
            <td> <div align="center"><%=(String)one.get(3)%></div></td>
            <td> <div align="center"><%=(String)one.get(4)%></div></td>
            <td> <div align="center"><%=one.get(7)%></div></td>
            <td> <div align="center"><%=(String)one.get(9)%></div></td>
            <td> <div align="center"><%=(String)one.get(12)%></div></td>
        </tr>
        <% } %>
    </tbody>
</table>
<br/>

<script>
     $(document).ready(function() {
         $('#search').DataTable();
     });
</script>
