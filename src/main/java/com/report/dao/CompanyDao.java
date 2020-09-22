package com.report.dao;

import com.report.entities.Company;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository
public class CompanyDao {

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

    public List<Company> getAllCompany() {
        String sql = "select * from company";
        return jdbcTemplate.query(sql, new CompanyMapper());
    }

    public Company getCompany(int id) {
        String sql = "select * from company where compid = ?";
        return jdbcTemplate.queryForObject(sql, new Object[]{id}, new CompanyMapper());
    }

    public static class CompanyMapper implements RowMapper<Company> {

        @Override
        public Company mapRow(ResultSet rs, int rowNum) throws SQLException {
        	Company company = new Company();
        	company.setCompid(rs.getInt("compid"));
        	company.setCompname(rs.getString("compname"));
        	company.setCompadd(rs.getString("compadd"));
        	company.setCompmail(rs.getString("compmail"));
        	company.setCompphone(rs.getString("compphone"));
        	company.setCompaccount(rs.getString("compaccount"));

        	
            return company;
        }

    }

    public boolean saveCompany(Company company) {
        String sql = "insert into company (compname, compadd, compmail, compphone, compaccount) values (?, ?, ?, ?, ?)";
        int value = jdbcTemplate.update(sql, new Object[]{company.getCompname(), company.getCompadd(), company.getCompmail(), company.getCompphone(), company.getCompaccount()});
        if (value > 0) {
            return true;
        }
        return false;
    }

    public boolean updateCompany(Company company) {
        String sql = "update company set compname=?, compadd=?, compmail=?, compphone=?, compaccount=? where compid=?";
        int value = jdbcTemplate.update(sql, new Object[]{company.getCompname(), company.getCompadd(), company.getCompmail(), company.getCompphone(), company.getCompaccount(), company.getCompid()});
        if (value > 0) {
            return true;
        }
        return false;
    }

    public boolean deleteCompany(int id) {
        String sql = "delete from company where compid=?";
        int value = jdbcTemplate.update(sql, new Object[]{id});
        if (value > 0) {
            return true;
        }
        return false;
    }

}
