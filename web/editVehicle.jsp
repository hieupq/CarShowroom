<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*,
																			 java.util.*,
																			 net.vehicle.*" errorPage="" %>
<% 
int vid = Integer.parseInt((String)session.getAttribute("vid"));
//out.println("<h3>Vehicle ID :"+vid);
ArrayList all = VehicleCommon.viewVehiclesByID(vid);
ArrayList al=VehicleCommon.getDrivers();
ArrayList usr=VehicleCommon.viewAllUser();
int us = usr.size();
int size = all.size();
for(int i=0;i<size;i++){
ArrayList one=(ArrayList)all.get(i);
%>
<script type="text/JavaScript">
<!--
function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_validateForm() { //v4.0
  var i,p,q,nm,test,num,min,max,errors='',args=MM_validateForm.arguments;
  for (i=0; i<(args.length-2); i+=3) { test=args[i+2]; val=MM_findObj(args[i]);
    if (val) { nm=val.name; if ((val=val.value)!="") {
      if (test.indexOf('isEmail')!=-1) { p=val.indexOf('@');
        if (p<1 || p==(val.length-1)) errors+='- '+nm+' must contain an e-mail address.\n';
      } else if (test!='R') { num = parseFloat(val);
        if (isNaN(val)) errors+='- '+nm+' must contain a number.\n';
        if (test.indexOf('inRange') != -1) { p=test.indexOf(':');
          min=test.substring(8,p); max=test.substring(p+1);
          if (num<min || max<num) errors+='- '+nm+' must contain a number between '+min+' and '+max+'.\n';
    } } } else if (test.charAt(0) == 'R') errors += '- '+nm+' is required.\n'; }
  } if (errors) alert('The following error(s) occurred:\n'+errors);
  document.MM_returnValue = (errors == '');
}
//-->
</script>
<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>

<div class="header">Vehicle Edit </div>
<h3>Following are the Vehicle Details.You can Edit the Details </h3>
<br/>
<form id="form1" name="form1" method="post" action="do?MOD=BOK&ACT=doBok">
  <table width="90%" align="center" style="border:#D22929 solid 2px;padding:5px;" border="0" >
    <tr>
      <th colspan="3" scope="col"><div class="header">
          <div align="left">&nbsp;&nbsp;<%=(String)one.get(1)%></div>
      </div></th>
    </tr>
    <tr>
      <td><strong>Number : </strong>&nbsp;<%=(String)one.get(2)%></td>
      <td></td>
      <td width="21%" rowspan="9"><img src="<%=(String)one.get(8)%>" width="220" height="120" /></td>
    </tr>
    <tr>
      <td colspan="2"><strong>Brand</strong> : <%=(String)one.get(3)%></td>
    </tr>
    <tr>
      <td width="36%"><strong>Type:</strong> <%=(String)one.get(4)%></td>
      <td width="43%"><strong>Price : </strong><%=one.get(7)%>&nbsp;$.</td>
    </tr>
    <tr>
      <td colspan="2"><strong>Vehicle Type: </strong><%=one.get(9)%></td>
    
    <tr>
      <td colspan="2"><hr width="400px"  align="left" style="border:#990000 solid 2px;"/></td>
    </tr>
    <tr>
      <td colspan="2"><div align="center"><a href="#"><strong>Edit Vehicle  Details</strong> </a></div></td>
    </tr>
    <tr>
      <td colspan="2"><input type="hidden" name="v_name" value="<%=(String)one.get(1)%>" /></td>
    </tr>
    <tr>
      <td colspan="2"></td>
    </tr>
    </tr>
    <tr>
      <td>Customer: <label>
        <select name="uname" id="uname">
            <option data-add=""  data-mobile="" data-email="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>
    		<%
      		for(int j=0;j<us;j++){
                      ArrayList u=(ArrayList)usr.get(j);
      		%>
      		<option value="<%=(String)u.get(0)%>" data-add="<%=(String)u.get(3)%>" data-mobile="<%=(String)u.get(6)%>" data-email="<%=(String)u.get(7)%>"><%=(String)u.get(1)%></option>
      		<% } 
        %>
        </select>
      </label>
    </td>
    </tr>

    <!-- View Details -->
    <script>
      $('#uname').change(function() {
        var name = $('#uname option:selected').text();
        var add = $('#uname option:selected').attr('data-add');
        var mobile = $('#uname option:selected').attr('data-mobile');
        var email = $('#uname option:selected').attr('data-email');

        var output = '<p><strong>Name: </strong>' + name + '</p>';
        output += '<p><strong>Address: </strong>' + add + '</p>';
        output += '<p><strong>Mobile: </strong>' + mobile + '</p>';
        output += '<p><strong>Email: </strong>' + email + '</p>';


        $('#user-details').html(output);
      });
    </script>
    <tr id="user-details">
      <td>
        
      </td>
    </tr>

    <tr>
      <td colspan="3"><label>
          <input name="NoOfDays" type="hidden" value="4" id="NoOfDays" size="5" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input name="KiloMeters" type="hidden" value="100" id="KiloMeters" size="5" /> 

</label></td>
    </tr>
    <tr>
      <td colspan="2">
        <label>
        <input name="NoOfSeats" type="hidden" value="4" id="NoOfSeats" size="8" />
        </label></td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><label>
        <div align="right">
          <input type="reset" name="Submit2" value="Reset"   class="redButton"/>
          </div>
      </label></td>
      <td><label>
        <input name="Submit" type="submit"  class="redButton" onclick="MM_validateForm('NoOfDays','','RisNum','KiloMeters','','RisNum','NoOfSeats','','RisNum');return document.MM_returnValue" value=" Book This Vehicle "/>
      </label></td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td colspan="2">&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
  </table>
</form>
<br/>
<% } %>
<br/>
<script>
     $(document).ready(function() {
         $('#uname').select2();
     });
</script>