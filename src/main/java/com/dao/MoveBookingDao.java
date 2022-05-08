package com.dao;

import com.bean.MoveBooking;
import com.bean.MoveStatus;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface MoveBookingDao  {

    List<MoveBooking> queryAll();

    MoveBooking queryMoveBookingById(@Param("id") Integer id);

    Integer updateMoveBookingStatusById(@Param("id") Integer id , @Param("status") MoveStatus status);

    void insertMoveBooking(MoveBooking moveBooking);

}
