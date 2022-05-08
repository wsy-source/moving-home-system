package com.controller;

import com.bean.MoveBooking;
import com.bean.User;
import com.bean.UserStatus;
import com.github.pagehelper.PageInfo;
import com.service.MovingBookService;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/admin")
public class AdminController {

    private UserStatus adminStatus = UserStatus.admin;

    @Autowired
    private MovingBookService movingBookService;

    @Autowired
    private UserService userService;


    @PostMapping("/autoLogin")
    @ResponseBody
    public User autoLogin() {
        return userService.queryUserByStatus(adminStatus);
    }

    @GetMapping("/orderInfo")
    public String orderInfo(Model model,
                            @RequestParam(value = "pageNum", required = false, defaultValue = "1") Integer pageNum,
                            @RequestParam(value = "pageSize", required = false, defaultValue = "10") Integer pageSize) {
        PageInfo<MoveBooking> pageInfo = movingBookService.queryByPage(pageNum, pageSize);
        model.addAttribute("orders", pageInfo);
        return "orderInfo";
    }

    @GetMapping("/toProcessIndex")
    public String toProcessIndex(@RequestParam("id") Integer id, Model model) {
        MoveBooking order = movingBookService.queryMoveBookingById(id);
        model.addAttribute("order", order);
        return "process";
    }

    @PostMapping("/process")
    public String process(MoveBooking moveBooking) {
        movingBookService.updateMoveBookingStatusById(moveBooking.getId(), moveBooking.getStatus());
        return "redirect:/admin/orderInfo";
    }

    @GetMapping("/toOrderInfoIndx")
    public String toOrderInfoIndex(@RequestParam("id") Integer id, Model model) {
        MoveBooking order = movingBookService.queryMoveBookingById(id);
        model.addAttribute("order", order);
        return "orderInfoIndex";
    }

}
