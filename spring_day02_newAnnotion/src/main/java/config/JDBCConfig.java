package config;

import com.alibaba.druid.pool.DruidDataSource;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;

@Configuration
@PropertySource("classpath:jdbc.properties")
public class JDBCConfig {
    @Value("${driver}")
    private String driver;
    @Value("${url}")
    private String url;
//    @Value("${username}")
    private String username="root";
//    @Value("${password}")
    private String password="123456";

    @Bean("dataSource")
    public DruidDataSource getDataSource(){
        DruidDataSource dataSource = new DruidDataSource();
        dataSource.setDriverClassName(driver);
        dataSource.setUrl(url);
        dataSource.setUsername(username);
        dataSource.setPassword(password);
        return dataSource;
    }
}
