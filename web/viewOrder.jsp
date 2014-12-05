<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*,
																			 java.util.*,
																			 net.vehicle.*" errorPage="" %>
<%
int oid = Integer.parseInt((String)session.getAttribute("oid"));
ArrayList all = VehicleCommon.viewBookingDetail(oid);
%>