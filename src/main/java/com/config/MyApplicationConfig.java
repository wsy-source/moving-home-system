package com.config;

import com.alibaba.druid.pool.DruidDataSourceFactory;
import com.github.pagehelper.PageInterceptor;
import com.handler.StatusTypeHandler;
import com.handler.UserTypeHandler;
import org.apache.ibatis.logging.stdout.StdOutImpl;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.ClassPathResource;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Controller;

import javax.sql.DataSource;
import java.util.Properties;

@Configuration
@MapperScan(basePackages = "com.dao")
@ComponentScan(basePackages = "com",excludeFilters = @ComponentScan.Filter(classes = Controller.class))
public class MyApplicationConfig {

    @Bean
    public DataSource dataSource() {
        DataSource dataSource = null;
        try {
            Properties properties = new Properties();
            properties.load(MyApplicationConfig.class.getClassLoader().getResourceAsStream("jdbc.properties"));
            dataSource = DruidDataSourceFactory.createDataSource(properties);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return dataSource;
    }

    @Bean
    public PageInterceptor pageInterceptor(){
      return   new PageInterceptor();
    }

    @Bean
    public SqlSessionFactoryBean sqlSessionFactoryBean(DataSource dataSource, PageInterceptor pageInterceptor,
                                                       StatusTypeHandler statusTypeHandler, UserTypeHandler userTypeHandler){
        SqlSessionFactoryBean sqlSessionFactoryBean = new SqlSessionFactoryBean();
        sqlSessionFactoryBean.setDataSource(dataSource);
        org.apache.ibatis.session.Configuration configuration = new org.apache.ibatis.session.Configuration();
//        驼峰命名
        configuration.setMapUnderscoreToCamelCase(true);
//        日志
        configuration.setLogImpl(StdOutImpl.class);
        ClassPathResource classPathResource = new ClassPathResource("mappers/UserMapper.xml");
        ClassPathResource classPathResource2 = new ClassPathResource("mappers/MoveBookingMapper.xml");
        sqlSessionFactoryBean.setMapperLocations(classPathResource,classPathResource2);
        sqlSessionFactoryBean.setConfiguration(configuration);
        sqlSessionFactoryBean.setPlugins(pageInterceptor);
        sqlSessionFactoryBean.setTypeHandlers(statusTypeHandler);
        sqlSessionFactoryBean.setTypeHandlers(userTypeHandler);
        return sqlSessionFactoryBean;
    }

    @Bean
    public DataSourceTransactionManager dataSourceTransactionManager(DataSource dataSource){
        DataSourceTransactionManager dataSourceTransactionManager = new DataSourceTransactionManager();
        dataSourceTransactionManager.setDataSource(dataSource);
        return dataSourceTransactionManager;
    }


}
