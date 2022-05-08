package com.handler;

import com.bean.MoveStatus;
import org.apache.ibatis.type.JdbcType;
import org.apache.ibatis.type.TypeHandler;
import org.springframework.stereotype.Component;

import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
* @ClassName StatusTypeHandler
* 功能描述 : 运输状态枚举类型处理器，从数据库中读取的状态封装为枚举类，并保存到对应实体类的属性中。
**/
@Component
public class StatusTypeHandler implements TypeHandler<MoveStatus> {

    @Override
    public void setParameter(PreparedStatement ps, int i, MoveStatus parameter, JdbcType jdbcType) throws SQLException {
        ps.setInt(i, parameter.getNum());
    }

    @Override
    public MoveStatus getResult(ResultSet rs, String columnName) throws SQLException {
        int num = rs.getInt(columnName);
        return MoveStatus.getStatus(num);
    }

    @Override
    public MoveStatus getResult(ResultSet rs, int columnIndex) throws SQLException {
        int num = rs.getInt(columnIndex);
        return MoveStatus.getStatus(num);

    }

    @Override
    public MoveStatus getResult(CallableStatement cs, int columnIndex) throws SQLException {
        return null;
    }
}
