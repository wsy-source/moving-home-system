package com.handler;

import com.bean.UserStatus;
import org.apache.ibatis.type.JdbcType;
import org.apache.ibatis.type.TypeHandler;
import org.springframework.stereotype.Component;

import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
/**
* @ClassName UserTypeHandler
* 功能描述 : 用户状态枚举类型处理器，从数据库中读取的状态封装为枚举类，并保存到对应实体类的属性中。
**/
@Component
public class UserTypeHandler implements TypeHandler<UserStatus> {
    @Override
    public void setParameter(PreparedStatement ps, int i, UserStatus parameter, JdbcType jdbcType) throws SQLException {
        ps.setInt(i, parameter.getNum());
    }

    @Override
    public UserStatus getResult(ResultSet rs, String columnName) throws SQLException {
        int num = rs.getInt(columnName);
        return UserStatus.getStatus(num);
    }

    @Override
    public UserStatus getResult(ResultSet rs, int columnIndex) throws SQLException {
        int num = rs.getInt(columnIndex);
        return UserStatus.getStatus(num);
    }

    @Override
    public UserStatus getResult(CallableStatement cs, int columnIndex) throws SQLException {
        return null;
    }
}
