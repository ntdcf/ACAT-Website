package com.CAL.model;



/**
 * Created by Summer7C on 2015/10/24.
 */

public class NoticeModel {
    private String NoticeTitle;
    private String content1;
    private String Time;

    public String getNoticeTitle() {
        return NoticeTitle;
    }

    public void setNoticeTitle(String noticeTitle) {
        NoticeTitle = noticeTitle;
    }

    public String getContent1() {
        return content1;
    }

    public void setContent1(String content1) {
        this.content1 = content1;
    }

    public String getTime() {
        return Time;
    }

    public void setTime(String time) {
        Time = time;
    }

    @Override
    public String toString() {
        return "NoticeModel{" +
                "NoticeTitle='" + NoticeTitle + '\'' +
                ", NoticeText='" + content1 + '\'' +
                ", Time='" + Time + '\'' +
                '}';
    }
}
