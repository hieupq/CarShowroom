package net.vehicle;

import java.sql.*;
import java.util.*;

public class VehicleCommon {
	
	public static ArrayList getDrivers() {
		Connection c=null;
		ArrayList al=new ArrayList();
		try {
    		String sql="SELECT DISTINCT(name) FROM driver ORDER BY name";
    		c = DBConnect.prepareConn();
    		Statement st=c.createStatement();
			ResultSet rs =st.executeQuery(sql);
			while(rs.next()) {
				al.add(rs.getString(1));
			}
			DBConnect.closeConn(c);		    		
		}
		catch (Exception ex) {
			System.out.println (ex);
		}
		return al;
	}
	
	public static ArrayList getVehicles() {
		Connection c=null;
		ArrayList al=new ArrayList();
		try {
    		String sql="SELECT DISTINCT(v_name) FROM vmast ORDER BY v_name";
    		c = DBConnect.prepareConn();
    		Statement st=c.createStatement();
			ResultSet rs =st.executeQuery(sql);
			while(rs.next()) {
				al.add(rs.getString(1));
			}
			DBConnect.closeConn(c);		    		
		}
		catch (Exception ex) {
			System.out.println (ex);
		}
		return al;
	}
	
        public static ArrayList getUsers() {
		Connection c=null;
		ArrayList al=new ArrayList();
		try {
    		String sql="SELECT DISTINCT(name) FROM users ORDER BY name";
    		c = DBConnect.prepareConn();
    		Statement st=c.createStatement();
			ResultSet rs =st.executeQuery(sql);
			while(rs.next()) {
				al.add(rs.getString(1));
			}
			DBConnect.closeConn(c);		    		
		}
		catch (Exception ex) {
			System.out.println (ex);
		}
		return al;
	}
	//--------------------------------------------------------------------------
	
	public static ArrayList viewAllFuelDetails() {
		ArrayList all=new ArrayList();
		Connection c=null;
		try {
			String sql="SELECT * FROM fuel_details ORDER BY v_name";
			c = DBConnect.prepareConn();
    		Statement st=c.createStatement();
			ResultSet rs =st.executeQuery(sql);
			while(rs.next()) {
				ArrayList one = new ArrayList();
				one.add(rs.getString(2));
				one.add(rs.getString(3));
				one.add(rs.getString(4));
				one.add(rs.getString(5));
				one.add(rs.getString(6));
				one.add(rs.getInt(7)+"");
				one.add(rs.getInt(1)+"");
				all.add(one);
			}
			DBConnect.closeConn(c);    
		}
		catch (Exception ex) {
			System.out.println (ex);
		}
		return all;
	}//viewAllFuelDetails 
	//--------------------------------------------------------------------------
	
	public static ArrayList viewAllOilChanges() {
		ArrayList all=new ArrayList();
		Connection c=null;
		try {
			String sql="SELECT * FROM oil_detail ORDER BY v_name";
			c = DBConnect.prepareConn();
    		Statement st=c.createStatement();
			ResultSet rs =st.executeQuery(sql);
			while(rs.next()) {
				ArrayList one = new ArrayList();
				one.add(rs.getInt(1)+"");
				one.add(rs.getString(2));
				one.add(rs.getString(3));
				one.add(rs.getString(4));
				one.add(rs.getInt(5)+"");
				one.add(rs.getString(6));
				one.add(rs.getString(7));
				all.add(one);
			}
			DBConnect.closeConn(c);    
		}
		catch (Exception ex) {
			System.out.println (ex);
		}
		return all;
	}//viewAllFuelDetails
	//--------------------------------------------------------------------------
	public static ArrayList viewAllRepair() {
		ArrayList all=new ArrayList();
		Connection c=null;
		try {
			String sql="SELECT * FROM repair ORDER BY v_name";
			c = DBConnect.prepareConn();
    		Statement st=c.createStatement();
			ResultSet rs =st.executeQuery(sql);
			while(rs.next()) {
				ArrayList one = new ArrayList();
				one.add(rs.getInt(1)+"");
				one.add(rs.getString(2));
				one.add(rs.getString(3));
				one.add(rs.getString(4));
				one.add(rs.getString(5));
				one.add(rs.getString(6));
				one.add(rs.getInt(7)+"");
				all.add(one);
			}
			DBConnect.closeConn(c);    
		}
		catch (Exception ex) {
			System.out.println (ex);
		}
		return all;
	}//viewAllFuelDetails
	//---------------------------------------------------------------------------------
	public static ArrayList viewAllDrivers() {
		ArrayList all=new ArrayList();
		Connection c=null;
		try {
			String sql="SELECT * FROM driver ORDER BY name";
			c = DBConnect.prepareConn();
    		Statement st=c.createStatement();
			ResultSet rs =st.executeQuery(sql);
			while(rs.next()) {
				ArrayList one = new ArrayList();
				one.add(rs.getInt(1));
				one.add(rs.getString(2));
                                one.add(rs.getString(3));
				one.add(rs.getString(6));
				one.add(rs.getString(8));
				one.add(rs.getString(9));
				one.add(rs.getString(10));
				one.add(rs.getInt(11));
				all.add(one);
			}
			DBConnect.closeConn(c);    
		}
		catch (Exception ex) {
			System.out.println (ex);
		}
		return all;
	}//viewAllFuelDetails
	
	//---------------------------------------------------------------------------------
	public static ArrayList viewAllVehicles() {
		ArrayList all=new ArrayList();
		Connection c=null;
		try {
			String sql="SELECT * FROM vmast ORDER BY v_name";
			c = DBConnect.prepareConn();
    		Statement st=c.createStatement();
			ResultSet rs =st.executeQuery(sql);
			while(rs.next()) {
				ArrayList one = new ArrayList();
				one.add(rs.getInt(1)+"");
				one.add(rs.getString(2));
				one.add(rs.getString(3));
				one.add(rs.getString(4));
				one.add(rs.getString(5));
				one.add(rs.getDouble(6));
				one.add(rs.getString(7));
				one.add(rs.getInt(8));
				one.add(rs.getString(9));
				one.add(rs.getString(10));
				one.add(rs.getString(11));
				one.add(rs.getString(12));
				one.add(rs.getString(15));
				//one.add(rs.getString(12));
				all.add(one);
			}
			DBConnect.closeConn(c);    
		}
		catch (Exception ex) {
			System.out.println (ex);
		}
		return all;
	}//viewAllFuelDetails

	//---------------------------------------------------------------------------------
	public static ArrayList viewVehiclesByType(String type) {
		ArrayList all=new ArrayList();
		Connection c=null;
		try {
			String sql="SELECT * FROM vmast WHERE v_type='"+type+"' ORDER BY v_name";
			c = DBConnect.prepareConn();
    		Statement st=c.createStatement();
			ResultSet rs =st.executeQuery(sql);
			while(rs.next()) {
				ArrayList one = new ArrayList();
				one.add(rs.getInt(1)+"");
				one.add(rs.getString(2));
				one.add(rs.getString(3));
				one.add(rs.getString(4));
				one.add(rs.getString(5));
				one.add(rs.getDouble(6)+"");
				one.add(rs.getString(7));
				one.add(rs.getInt(8));
				one.add(rs.getString(9));
				one.add(rs.getString(10));
				one.add(rs.getString(11));
				one.add(rs.getString(12));
				one.add(rs.getString(15));
				//one.add(rs.getString(12));
				all.add(one);
			}
			DBConnect.closeConn(c);    
		}
		catch (Exception ex) {
			System.out.println (ex);
		}
		return all;
	}//viewAllFuelDetails
	//-------------------------------------
	public static ArrayList viewVehiclesByID(int id) {
		ArrayList all=new ArrayList();
		Connection c=null;
		try {
			String sql="SELECT * FROM vmast WHERE id="+id;//+"' ORDER BY v_name";
			c = DBConnect.prepareConn();
    		Statement st=c.createStatement();
			ResultSet rs =st.executeQuery(sql);
			while(rs.next()) {
				ArrayList one = new ArrayList();
				one.add(rs.getInt(1)+"");
				one.add(rs.getString(2));
				one.add(rs.getString(3));
				one.add(rs.getString(4));
				one.add(rs.getString(5));
				one.add(rs.getDouble(6));
				one.add(rs.getString(7));
				one.add(rs.getInt(8));
				one.add(rs.getString(9));
				one.add(rs.getString(10));
				one.add(rs.getString(11));
				one.add(rs.getString(12));
				one.add(rs.getString(15));
				//one.add(rs.getString(12));
				all.add(one);
			}
			DBConnect.closeConn(c);    
		}
		catch (Exception ex) {
			System.out.println (ex);
		}
		return all;
	}//viewAllFuelDetails
	
	//--------------------------------------
	public static ArrayList viewBookingByID(int id) {
		ArrayList all=new ArrayList();
		Connection c=null;
		try {
			String sql="SELECT * FROM bookings WHERE uid="+id+" ORDER BY status";
			c = DBConnect.prepareConn();
    		Statement st=c.createStatement();
			ResultSet rs =st.executeQuery(sql);
			while(rs.next()) {
				ArrayList one = new ArrayList();
				one.add(rs.getString(4));
				one.add(rs.getString(5));
				one.add(rs.getString(6));
				one.add(rs.getString(7));
				one.add(rs.getString(9));
				one.add(rs.getString(11));
				all.add(one);
			}
			DBConnect.closeConn(c);    
		}
		catch (Exception ex) {
			System.out.println (ex);
		}
		return all;
	}//viewAllFuelDetails
	//--------------------------------
	public static ArrayList viewAllBooking() {
		ArrayList all=new ArrayList();
		Connection c=null;
		try {
			//String sql="SELECT * FROM bookings WHERE status = 'Pending'";//
                        String sql="SELECT * FROM bookings";//
			c = DBConnect.prepareConn();
    		Statement st=c.createStatement();
			ResultSet rs =st.executeQuery(sql);
			while(rs.next()) {
				ArrayList one = new ArrayList();
				one.add(rs.getInt(1)+"");
                                one.add(rs.getString(3));
				one.add(rs.getString(4));
				one.add(rs.getString(5));
				one.add(rs.getString(6));
				one.add(rs.getString(7));
				one.add(rs.getString(9));
				one.add(rs.getString(11));
				all.add(one);
			}
			DBConnect.closeConn(c);    
		}
		catch (Exception ex) {
			System.out.println (ex);
		}
		return all;
	}//viewAllFuelDetails
	//-------------------------------------
	public static ArrayList viewUserDetails(int id) {
		ArrayList one=new ArrayList();
		Connection c=null;
		try {
			String sql="SELECT * FROM users WHERE id="+id;//+"' ORDER BY v_name";
			c = DBConnect.prepareConn();
    		Statement st=c.createStatement();
			ResultSet rs =st.executeQuery(sql);
			while(rs.next()) {
				one.add(rs.getString(2));
				one.add(rs.getString(3));
				one.add(rs.getString(4));
				one.add(rs.getString(5));
				one.add(rs.getString(6));
				one.add(rs.getString(7));
				one.add(rs.getString(8));
				
			}
			DBConnect.closeConn(c);    
		}
		catch (Exception ex) {
			System.out.println (ex);
		}
		return one;
	}//viewAllFuelDetails
        public static ArrayList viewAllUser() {
		ArrayList all=new ArrayList();
		Connection c=null;
		try {
			//String sql="SELECT * FROM bookings WHERE status = 'Pending'";//
                        String sql="SELECT * FROM users";//
			c = DBConnect.prepareConn();
    		Statement st=c.createStatement();
			ResultSet rs =st.executeQuery(sql);
			while(rs.next()) {
				ArrayList one = new ArrayList();
                                one.add(rs.getString(1));
				one.add(rs.getString(2));
				one.add(rs.getString(3));
				one.add(rs.getString(4));
				one.add(rs.getString(5));
				one.add(rs.getString(6));
				one.add(rs.getString(7));
				one.add(rs.getString(8));
				all.add(one);
			}
			DBConnect.closeConn(c);    
		}
		catch (Exception ex) {
			System.out.println (ex);
		}
		return all;
	}//viewAllUsersDetails
        public static ArrayList viewBookingDetail(int id) {
		ArrayList all=new ArrayList();
		Connection c=null;
		try {
			//String sql="SELECT * FROM bookings WHERE uid="+id+" ORDER BY status";
                        String sql = "SELECT `bid`, `u_name`, a.v_name, `d_name`, `status`, `add1`, `City`, `mobile`, `email`, `cost` "
                            + "FROM `bookings`a inner join `users` b on a.uid = b.id inner join `vmast` c on a.v_name = c.v_name "
                            + "WHERE bid=" +id;
			c = DBConnect.prepareConn();
                        Statement st=c.createStatement();
			ResultSet rs =st.executeQuery(sql);
			while(rs.next()) {
				ArrayList one = new ArrayList();
				one.add(rs.getString(1));
				one.add(rs.getString(2));
				one.add(rs.getString(3));
				one.add(rs.getString(4));
				one.add(rs.getString(5));
				one.add(rs.getString(6));
                                one.add(rs.getString(7));
                                one.add(rs.getString(8));
                                one.add(rs.getString(9));
                                one.add(rs.getString(10));                                
				all.add(one);
			}
			DBConnect.closeConn(c);    
		}
		catch (Exception ex) {
			System.out.println (ex);
		}
		return all;
	}
        public static ArrayList viewAllAccount() {
		ArrayList all=new ArrayList();
		Connection c=null;
		try {
			//String sql="SELECT * FROM bookings WHERE status = 'Pending'";//
                        String sql="SELECT * FROM admin_user";//
			c = DBConnect.prepareConn();
    		Statement st=c.createStatement();
			ResultSet rs =st.executeQuery(sql);
			while(rs.next()) {
				ArrayList one = new ArrayList();
                                one.add(rs.getString(1));
				one.add(rs.getString(2));
				one.add(rs.getString(3));
				one.add(rs.getString(4));
				all.add(one);
			}
			DBConnect.closeConn(c);    
		}
		catch (Exception ex) {
			System.out.println (ex);
		}
		return all;
	}//viewAllAccount
        public static ArrayList viewAllBookingByDealer(String name, int i) {
		ArrayList all=new ArrayList();
		Connection c=null;
		try {
			//String sql="SELECT * FROM bookings WHERE status = 'Pending'";//
                    
                    String by ="d_name";
                    if (i==0) {by = "d_name";}
                    if (i==1) {by = "u_name";}
                        String sql="SELECT * FROM bookings where "+ by + " = '" + name +"'";//
                        
			c = DBConnect.prepareConn();
                    Statement st=c.createStatement();
			ResultSet rs =st.executeQuery(sql);
			while(rs.next()) {
				ArrayList one = new ArrayList();
				one.add(rs.getInt(1)+"");
                                one.add(rs.getString(3));
				one.add(rs.getString(4));
				one.add(rs.getString(5));
				one.add(rs.getString(6));
				one.add(rs.getString(7));
				one.add(rs.getString(9));
				one.add(rs.getString(11));
				all.add(one);
			}
			DBConnect.closeConn(c);    
		}
		catch (Exception ex) {
			System.out.println (ex);
		}
		return all;
	}
	//-------------------------------------
}