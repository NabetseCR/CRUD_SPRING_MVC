package data;

import org.springframework.jdbc.datasource.DriverManagerDataSource;

public class Connection {
    public DriverManagerDataSource connect(){
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName("com.mysql.jdbc.Driver");
        dataSource.setUrl("jdbc:mysql://localhost:3306/demo?verifyServerCertificate=false&useSSL=false");
        dataSource.setUsername("root");
        dataSource.setPassword("root");
        return dataSource;
    }
}
