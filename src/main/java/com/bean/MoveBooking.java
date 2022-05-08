package com.bean;

import lombok.Data;

import java.text.SimpleDateFormat;
import java.util.Date;

@Data
public class MoveBooking {
    /**
     * 主键
     */
    private Integer id;

    /**
     * 起始地区
     */
    private String area;

    /**
     * 所用车型
     */
    private String cartype;


    /**
     * 搬家日期
     */
    private Date movedate;

    /**
     * 联系电话
     */
    private String phone;

    /**
     * 0-	未处理,1-	已派车,2-	已结束
     */
    private MoveStatus status = MoveStatus.unprocess;

    //联系人
    private String username;

    private String address;

    public String getMovedate() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        return simpleDateFormat.format(movedate);
    }
}

