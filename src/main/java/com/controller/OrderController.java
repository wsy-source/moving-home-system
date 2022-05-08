package com.controller;

import com.bean.MoveBooking;
import com.service.MovingBookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.Assert;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class OrderController extends BaseController {

    @Autowired
    private MovingBookService movingBookService;

    @GetMapping("/order")
    public String toOrder(){
        return "order";
    }

    @PostMapping("/doOrder")
    public String doOrder(MoveBooking moveBooking){
        Assert.notNull(moveBooking, "订单不能为空!");
        movingBookService.saveMovingBook(moveBooking);
        return "success";
    }


}
