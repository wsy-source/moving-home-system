package com.converter;

import com.bean.MoveStatus;
import org.springframework.core.convert.converter.Converter;

/**
* @ClassName StatusConverter
* 功能描述 : 从前端读取的字符串运输状态转换为枚举类型
**/
public class StatusConverter implements Converter<String, MoveStatus> {
    @Override
    public MoveStatus convert(String source) {
        int num = Integer.parseInt(source);
        MoveStatus status = MoveStatus.getStatus(num);
        return status;
    }

    @Override
    public <U> Converter<String, U> andThen(Converter<? super MoveStatus, ? extends U> after) {
        return Converter.super.andThen(after);
    }
}
