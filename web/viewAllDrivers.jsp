<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*,
																			 java.util.*,
																			 net.vehicle.*" errorPage="" %>
<%
ArrayList all = VehicleCommon.viewAllDrivers();
int size = all.size();
%>
<style type="text/css">
<!--
.style10 {color: #EED9A8; font-weight: bold; font-size: 14px; }
.style11 {color: #E49C7C}
-->
</style>
<script>
function deleteDriver(id){
	if(confirm('Want to Removed this Dealer Details?')){
		window.location.href = 'do?MOD=MTN&ACT=dDel&did='+id;
	}
}
</script>

<div class="header">View All Dealer Details </div>
<br/>
<h3>View all the Records of Dealer.<br/>
<a href="do?MOD=MTN&ACT=DvrAdd">ADD NEW DEALER</a></h3>
<br/>
<table width="95%" align="center"  style="border:#D22929 solid 2px;padding:10px;" border="0" id="data">
  <thead>
    <th bgcolor="#D22929" scope="col"><span class="style10">Dealer Name </span></th>
<!--    <th bgcolor="#D22929" scope="col"><span class="style10">City Name </span></th>-->
    <th bgcolor="#D22929" scope="col"><span class="style10">Mobile</span></th>
<!--    <th bgcolor="#D22929" scope="col"><span class="style10">Lic. No  </span></th>
    <th bgcolor="#D22929" scope="col"><span class="style10">Expiry Date </span></th>
    <th bgcolor="#D22929" scope="col"><span class="style10">Experiance&nbsp;&nbsp;</span></th>-->
    <th bgcolor="#D22929" scope="col"><span class="style10">Ation</span></th>
  </thead

<tbody>
<%
for(int i=0;i<size;i++){
ArrayList one=(ArrayList)all.get(i);
%>
<tr style="height:30px; padding:4px;">
    <td><div align="center"><%=(String)one.get(1)%></div></td>
    <td><div align="center"><%=(String)one.get(4)%></div></td>
<!--    <td><div align="center"><a href="javascript:deleteDriver(<%= one.get(0) %>)">Remove</a></div></td>-->
    <td><div align="center"><a href="do?MOD=MTN&ACT=viewOrderBy&name=<%=(String)one.get(1)%>">View Record</a></div></td>
</tr>
<% } %>
</tbody>
  <tfoot>
      <th bgcolor="#D22929" scope="col"><span class="style10">Dealer Name </span></th>
      <th bgcolor="#D22929" scope="col"><span class="style10">Mobile</span></th>
      <th bgcolor="#D22929" scope="col"><span class="style10">Ation</span></th>
  </tfoot>
</table>
<script>
     $(document).ready(function() {
         $('#data').DataTable();
     });
</script>