<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*,
																			 java.util.*,
																			 net.vehicle.*" errorPage="" %>
<%
String name = (String)session.getAttribute("name");
ArrayList all = VehicleCommon.viewAllBookingByDealer(name, 0);
int size = all.size();
%>																			 
<style type="text/css">
<!--
.style10 {color: #EED9A8; font-weight: bold; font-size: 14px; }
-->
</style>
<script>
function bookAction(act){
	with (window.document.bookingForm) {
		if(confirm('Do You want to '+act+' this Request ?')){
			submit();
		}
	}
}
</script>
<div class="header">View All Order by <% out.print(name);%></div>
<br/>
<table width="95%" align="center"  style="border:#D22929 solid 2px;padding:10px;" border="0" id="data">
  <thead>
    <th bgcolor="#D22929" scope="col"><span class="style10">Vehicle Name </span></th>
    <th bgcolor="#D22929" scope="col"><span class="style10">Customer</span></th>
    <th bgcolor="#D22929" scope="col"><span class="style10">Dealer </span></th>
    <th bgcolor="#D22929" scope="col"><span class="style10">Date</span></th>
    <th bgcolor="#D22929" scope="col"><span class="style10">Status</span></th>
    <th bgcolor="#D22929" scope="col"><span class="style10">Action</span></th>
    <th bgcolor="#D22929" scope="col"><span class="style10">View</span></th>
  </thead>
  <tfoot>
    <th bgcolor="#D22929" scope="col"><span class="style10">Vehicle Name </span></th>
    <th bgcolor="#D22929" scope="col"><span class="style10">Customer</span></th>
    <th bgcolor="#D22929" scope="col"><span class="style10">Dealer </span></th>
    <th bgcolor="#D22929" scope="col"><span class="style10">Date</span></th>
    <th bgcolor="#D22929" scope="col"><span class="style10">Status</span></th>
    <th bgcolor="#D22929" scope="col"><span class="style10">Action</span></th>
    <th bgcolor="#D22929" scope="col"><span class="style10">View</span></th>
  </tfoot>
  <tbody>
  <%
for(int i=0;i<size;i++){
ArrayList one=(ArrayList)all.get(i);
%>
<form name="bookingForm" id="bookingForm" action="do?MOD=MTN&ACT=bookAction" method="post">
  <tr style="height:30px; padding:4px;">
    <td>
        <input type="hidden" name="bid" value="<%=(String)one.get(0)%>" />
    <div align="center"><%=(String)one.get(2)%></div></td>
    <td> <div align="center"><%=(String)one.get(1)%></div></td>
    <td><div align="center"><%=(String)one.get(3)%></div></td>
    <td><div align="center"><%=(String)one.get(4)%></div></td>
    <td><div align="center">
            <% 
            Boolean status = one.get(7).equals("Pending");
                if(status){
                    out.println("<select name=\"action\" >");
                    out.println("<option value=\"Pending\">Pending</option>");
                    out.println("<option value=\"Approved\">Approved</option>");
                    out.println("<option value=\"Canceled\">Canceled</option>");
                    out.println("/select");
                }
                else{
                    out.println(one.get(7));
                }
            %>           
        </div>
    </td>
    <td><div align="center">
            <input type="submit" value=" Update " <% if(!status){out.println("disable");}%>/>
        </div>
    </td>
    <td><div align="center"><a href="do?MOD=MTN&ACT=viewOrder&oId=<%=(String)one.get(0)%>">Detail</a></div></td>
  </tr>
</form>
  <% } %>
</tbody>
</table>
<script>
     $(document).ready(function() {
         $('#data').DataTable();
     });
</script>