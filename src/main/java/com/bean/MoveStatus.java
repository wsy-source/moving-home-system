package com.bean;

public enum MoveStatus {
    unprocess(0, "未处理"), moving(1, "已派车"), finished(2, "已完成");
    private Integer num;
    private String  msg;

    MoveStatus(Integer num, String msg) {
        this.num = num;
        this.msg = msg;
    }

    public Integer getNum() {
        return this.num;
    }

    public String getMsg() {
        return this.msg;
    }
    public static MoveStatus getStatus(int num){
        if (num == 0 ){
            return MoveStatus.unprocess;
        }else if (num == 1){
            return MoveStatus.moving;
        }else if (num == 2){
            return MoveStatus.finished;
        }else {
            return null;
        }
    }

}
