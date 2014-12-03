<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*,
																			 java.util.*,
																			 net.vehicle.*" errorPage="" %>
<%
ArrayList all = VehicleCommon.viewAllVehicles();
int size = all.size();
%>
<script>
function deleteVehicle(id){
	if(confirm('Want to Delete this Vehicle Details?')){
		window.location.href = 'do?MOD=MTN&ACT=vDel&vid='+id;
	}
}
</script>
<div class="header">View All Vehicle Details </div><br/>
<h3>View all the Vehicle Details.<br/><a href="do?MOD=MTN&ACT=VclAdd">ADD NEW VEHICLE</a></h3><br/>

<%
int count =0;
for(int i=0;i<size;i++){
count=count+1;
ArrayList one=(ArrayList)all.get(i);
%>

<table width="90%" align="center" style="border:#D22929 solid 2px;padding:5px;" border="0" >
  <tr>
    <th colspan="3" scope="col"><div class="header"> 
      <div align="left">&nbsp;<%=count%>)&nbsp;<%=(String)one.get(1)%></div>
    </div></th>
  </tr>
  <tr>
    <td colspan="2"><strong>Model : </strong>&nbsp;<%=(String)one.get(2)%></td>
    <td width="21%" rowspan="6"><img src="<%=(String)one.get(8)%>" width="220" height="120" /></td>
  </tr>
  <tr>
    <td colspan="2"><strong>Brand</strong> : <%=(String)one.get(3)%></td>
  </tr>
  <tr>
    <td><strong>Type:</strong> <%=(String)one.get(4)%></td>
    <td><strong>Price : </strong><%=one.get(7)%>&nbsp;$.</td>
  </tr>
  <tr>
    <td colspan="2"><strong>Vehicle Type: </strong><%=one.get(9)%></td>
  </tr>
  <tr>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td width="36%"><strong>Dealer Name :</strong> <%=(String)one.get(12)%></td>
    <td width="43%">&nbsp;</td>
  </tr>
  <tr>
    <td>
    <div align="center"><a href="do?MOD=MTN&ACT=editVehicle&vId=<%=(String)one.get(0)%>">Order Vehicle</a> </div></td>
    <td>&nbsp;&nbsp;&nbsp;<a href="javascript:deleteVehicle(<%=(String)one.get(0)%>)">Delete Vehicle</a></td>
    <td>&nbsp;</td>
  </tr>
</table>
<br/>
<% } %>
