package com.bean;

public enum UserStatus {

    user(0, "用户"), admin(1, "管理员");
    private Integer num;
    private String msg;

    UserStatus(Integer num, String msg) {
        this.num = num;
        this.msg = msg;
    }

    public Integer getNum() {
        return this.num;
    }

    public String getMsg() {
        return this.msg;
    }

    public static UserStatus getStatus(int num) {
        if (num == 1) {
            return UserStatus.admin;
        } else {
            return UserStatus.user;
        }
    }


    }
