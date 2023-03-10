package jdbc;

import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import entity.FundEntity;
import entity.UserEntity;

public class FundService {
	public static Connection getConn(){
		String url = "JDBC:mysql://localhost:3306/efund?useUnicode=true&characterEncoding=UTF-8&useSSL=false";
		
		Connection conn=null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			conn = DriverManager.getConnection(url,"root","123456");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return conn;
	}
	
//	SELECT * FROM efund.fund WHERE fid = '1'
	public static FundEntity findFundByFid(int fid)
	{
		Connection conn = getConn();

		QueryRunner runner = new QueryRunner();
		
		String sql = "SELECT * FROM fund WHERE fid = ?";
		
		FundEntity fund = null;
		
		try {
			List<FundEntity> funds= runner.query(conn, sql,new BeanListHandler<FundEntity>(FundEntity.class),fid);
			
			DbUtils.closeQuietly(conn);

			if(funds.size()>0)
			{
				return funds.get(0);
			}
			else
			{
				return null;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		return fund;
	}
	
//	findFundByFnum
	public static FundEntity findFundByFnum(String fnum)
	{
		Connection conn = getConn();

		QueryRunner runner = new QueryRunner();
		
		String sql = "SELECT * FROM fund WHERE fnum = ?";
		
		FundEntity fund = null;
		
		try {
			List<FundEntity> funds= runner.query(conn, sql,new BeanListHandler<FundEntity>(FundEntity.class),fnum);
			
			DbUtils.closeQuietly(conn);

			if(funds.size()>0)
			{
				return funds.get(0);
			}
			else
			{
				return null;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		return fund;
	}
	
	//findFundByFname
	public static FundEntity findFundByFname(String fname)
	{
		Connection conn = getConn();

		QueryRunner runner = new QueryRunner();
		
		String sql = "SELECT * FROM fund WHERE fname = ?";
		
		FundEntity fund = null;
		
		try {
			List<FundEntity> funds= runner.query(conn, sql,new BeanListHandler<FundEntity>(FundEntity.class),fname);
			
			DbUtils.closeQuietly(conn);

			if(funds.size()>0)
			{
				return funds.get(0);
			}
			else
			{
				return null;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		return fund;
	}

	//????????? ???????????????????????????Funds
	public static List<FundEntity> getAdmFunds(String ftype)
	{
		Connection conn = getConn();

		QueryRunner runner = new QueryRunner();
		
		String sql = "SELECT * FROM fund WHERE ftype=?";
		
		List<FundEntity> funds = new ArrayList<>();
		
		try {
			funds= runner.query(conn, sql,new BeanListHandler<FundEntity>(FundEntity.class),ftype);
			
			DbUtils.closeQuietly(conn);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		return funds;
	}
	
	//?????????????????????????????????Funds
	public static List<FundEntity> getFunds(String ftype)
	{
		Connection conn = getConn();

		QueryRunner runner = new QueryRunner();
		
		String sql = "SELECT * FROM fund WHERE ftype=? && fflag='1'";
		
		List<FundEntity> funds = new ArrayList<>();
		
		try {
			funds= runner.query(conn, sql,new BeanListHandler<FundEntity>(FundEntity.class),ftype);
			
			DbUtils.closeQuietly(conn);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		return funds;
	}
	
	//????????????????????????
	public static List<FundEntity> geAlltFunds()
	{
		Connection conn = getConn();

		QueryRunner runner = new QueryRunner();
		
		String sql = "SELECT * FROM fund";
		
		List<FundEntity> funds = new ArrayList<>();
		
		try {
			funds= runner.query(conn, sql,new BeanListHandler<FundEntity>(FundEntity.class));
			
			DbUtils.closeQuietly(conn);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		return funds;
	}
	
	//????????????
	public static void changeFundFlag(String fnum) {
		Connection conn = getConn();
		QueryRunner runner = new QueryRunner();

		int fflag = FundService.findFundByFnum(fnum).getFflag();
		int f = 0;
		if(fflag==1) f=0;
		if(fflag==0) f=1;
		String sql = "UPDATE fund set fflag=? where fnum=?";

		try {
			int row = runner.update(conn, sql ,f ,fnum);
			DbUtils.closeQuietly(conn);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//????????????
//	INSERT INTO fund (fname,fnum,frate,fmanager,fbuy,ftype,fstart,ftext) VALUES ('test','911111','10',0.13,'???????????????',100,'1','2020-01-04','??????????????????')
	public static int addFund(String fname,String fnum,String frate,String fmanager,int fbuy,BigDecimal fbuyrate,String ftype,String fstart,String ftext)
	{
		Connection conn = getConn();
		QueryRunner runner = new QueryRunner();
		
		String sql = "INSERT INTO fund (fname,fnum,frate,fmanager,fbuy,fbuyrate,ftype,fstart,ftext) VALUES (?,?,?,?,?,?,?,?,?)";
		
		try {
			int row = runner.update(conn,sql,fname,fnum,frate,fmanager,fbuy,fbuyrate,ftype,fstart,ftext);
			
			DbUtils.closeQuietly(conn);
			
			if(row>0) return row;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}

	// ????????????
	public static void updateFund(String fnum, int fbuy, BigDecimal fbuyrate,String ftext) {
		Connection conn = getConn();
		QueryRunner runner = new QueryRunner();

		String sql = "UPDATE fund set fbuy=?,fbuyrate=?,ftext=? where fnum=?";

		try {
			int row = runner.update(conn, sql, fbuy, fbuyrate, ftext, fnum);
			DbUtils.closeQuietly(conn);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
