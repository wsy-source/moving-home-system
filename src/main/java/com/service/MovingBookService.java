package com.service;

import com.bean.MoveBooking;
import com.bean.MoveStatus;
import com.github.pagehelper.PageInfo;

import java.util.List;

public interface MovingBookService {

    void saveMovingBook(MoveBooking moveBooking);

    MoveBooking queryMoveBookingById(Integer id);

    Integer updateMoveBookingStatusById(Integer id, MoveStatus status);

    List<MoveBooking> queryAll();

    PageInfo<MoveBooking> queryByPage(Integer pageNum, Integer pageSize);
}
