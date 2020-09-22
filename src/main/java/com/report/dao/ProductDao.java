package com.report.dao;

import com.report.entities.Product;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDao {

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

    public List<Product> getAllProduct() {
        String sql = "select * from product";
        return jdbcTemplate.query(sql, new ProductMapper());
    }

    public Product getProduct(int id) {
        String sql = "select * from product where pid=?";
        return jdbcTemplate.queryForObject(sql, new Object[]{id}, new ProductMapper());
    }

    public static class ProductMapper implements RowMapper<Product> {

        @Override
        public Product mapRow(ResultSet rs, int rowNum) throws SQLException {
            Product product = new Product();
            product.setPid(rs.getInt("pid"));
            product.setPname(rs.getString("pname"));
            product.setPdesc(rs.getString("pdesc"));
            product.setHsn(rs.getInt("hsn"));
            product.setPrice(rs.getDouble("price"));
            product.setQty(rs.getInt("qty"));
            product.setUnit(rs.getString("unit"));
            product.setTax(rs.getString("tax"));
            product.setCess(rs.getInt("cess"));
            product.setDnote(rs.getString("dnote"));
        	product.setModepay(rs.getString("modepay"));
        	product.setSuppliers(rs.getString("suppliers"));
        	product.setOtherref(rs.getString("otherref"));
        	product.setAdate(rs.getString("adate"));
        	product.setDesdoc(rs.getString("desdoc"));
        	product.setDeliverydate(rs.getString("deliverydate"));
        	product.setDesthrough(rs.getString("desthrough"));
        	product.setDelivery(rs.getString("delivery"));
        	product.setDest(rs.getString("dest"));
            
            return product;
        }

    }

    public boolean saveProduct(Product product) {
        String sql = "insert into product (pname, pdesc, hsn, price, qty, unit, tax, cess, dnote, modepay, suppliers, otherref, adate, desdoc, deliverydate, desthrough, delivery, dest) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

        int value = jdbcTemplate.update(sql, new Object[]{product.getPname(), product.getPdesc(), product.getHsn(), product.getPrice(), product.getQty(), product.getUnit(), product.getTax(), product.getCess(),
        		product.getDnote(), product.getModepay(), product.getSuppliers(), product.getOtherref(), product.getAdate(), product.getDesdoc(), product.getDeliverydate(), product.getDesthrough(), product.getDelivery(), product.getDest()});

        if (value > 0) {
            return true;
        }

        return false;
    }

    public boolean updateProduct(Product product) {
        String sql = "update product set pname=?, pdesc=?, hsn=?, price=?, qty=?, unit=?, tax=?, cess=? , dnote=?, modepay=?, suppliers=?, otherref=?, adate=?, desdoc=?, deliverydate=?, desthrough=?, delivery=?, dest=?  where pid=?";

        int value = jdbcTemplate.update(sql, new Object[]{product.getPname(), product.getPdesc(), product.getHsn(), product.getPrice(), product.getQty(), product.getUnit(), product.getTax(), product.getCess(),
        		product.getDnote(), product.getModepay(), product.getSuppliers(), product.getOtherref(), product.getAdate(), product.getDesdoc(), product.getDeliverydate(), product.getDesthrough(), product.getDelivery(), product.getDest(),product.getPid()});

        if (value > 0) {
            return true;
        }

        return false;
    }

    public boolean deleteProduct(int id) {
        String sql = "delete from product where pid=?";

        int value = jdbcTemplate.update(sql, new Object[]{id});

        if (value > 0) {
            return true;
        }

        return false;
    }
    
    

}
