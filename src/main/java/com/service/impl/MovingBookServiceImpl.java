package com.service.impl;

import com.bean.MoveBooking;
import com.bean.MoveStatus;
import com.dao.MoveBookingDao;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.service.MovingBookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MovingBookServiceImpl implements MovingBookService {

    @Autowired
    private MoveBookingDao moveBookingDao;

    @Override
    public void saveMovingBook(MoveBooking moveBooking) {
        moveBookingDao.insertMoveBooking(moveBooking);
    }

    @Override
    public MoveBooking queryMoveBookingById(Integer id) {
        return moveBookingDao.queryMoveBookingById(id);
    }

    @Override
    public Integer updateMoveBookingStatusById(Integer id, MoveStatus status) {
        return moveBookingDao.updateMoveBookingStatusById(id, status);
    }

    @Override
    public List<MoveBooking> queryAll() {
        return moveBookingDao.queryAll();
    }

    @Override
    public PageInfo queryByPage(Integer pageNum, Integer pageSize) {
        Page<MoveBooking> page = PageHelper.startPage(pageNum, pageSize);
        List<MoveBooking> moveBookings = moveBookingDao.queryAll();
        PageInfo<MoveBooking> pageInfo = new PageInfo<>(page);
        return pageInfo;
    }
}
