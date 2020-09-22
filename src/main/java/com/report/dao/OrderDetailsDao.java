package com.report.dao;

import com.report.entities.OrderDetails;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository
public class OrderDetailsDao {

    private DataSource dataSource;
    private JdbcTemplate jdbcTemplate;

    public DataSource getDataSource() {
        return dataSource;
    }

    @Autowired
    public void setDataSource(DataSource dataSource) {
        this.dataSource = dataSource;
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }
    
    public List<OrderDetails> getAllOrderDetails(){
        String sql = "select * from orderdetails";
        return jdbcTemplate.query(sql, new ODRowMapper());
    }
    
    public List<OrderDetails> getAllOrderDetailsByOrderID(int oid){
        String sql = "select * from orderdetails where oid=?";
        return jdbcTemplate.query(sql, new Object[]{oid}, new ODRowMapper());
    }
    private static class ODRowMapper implements RowMapper<OrderDetails>{

        @Override
        public OrderDetails mapRow(ResultSet rs, int rowNum) throws SQLException {
            OrderDetails o = new OrderDetails();
            o.setOdid(rs.getInt("odid"));
            o.setOid(rs.getInt("oid"));
            o.setPid(rs.getInt("pid"));
            o.setPrice(rs.getDouble("price"));
            o.setQty(rs.getInt("qty"));
            o.setPdesc(rs.getString("pdesc"));
            o.setHsn(rs.getInt("hsn"));
            o.setTax(rs.getString("tax"));
            return o;
        }
        
    }
    
    public boolean saveOrderDetails(OrderDetails orderDetails) {
        String sql = "insert into orderdetails ( odid, oid, pid, price, qty, pdesc, hsn, tax) values ( ?, ?, ?, ?, ?, ?, ?, ?)";

        int value = jdbcTemplate.update(sql, new Object[]{ orderDetails.getOdid(), orderDetails.getOid(), orderDetails.getPid(), orderDetails.getPrice(), orderDetails.getQty(), orderDetails.getPdesc(), orderDetails.getHsn(), orderDetails.getTax() });

        if (value > 0) {
            return true;
        }

        return false;
    }
    
    
}
