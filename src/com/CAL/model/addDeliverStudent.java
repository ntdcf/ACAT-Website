package com.CAL.model;

/**
 * Created by Summer7C on 2015/9/28.
 */
public class addDeliverStudent {
    private String studentname;
    private String studentid;
    private boolean stusex;
    private String stuclass;
    private String phonenumber;
    private String qq;
    private String email;
    private int major;
    private String idea;

    public String getStudentname() {
        return studentname;
    }

    public void setStudentname(String studentname) {
        this.studentname = studentname;
    }

    public String getStudentid() {
        return studentid;
    }

    public void setStudentid(String studentid) {
        this.studentid = studentid;
    }

    public boolean isStusex() {
        return stusex;
    }

    public void setStusex(boolean stusex) {
        this.stusex = stusex;
    }

    public String getStuclass() {
        return stuclass;
    }

    public void setStuclass(String stuclass) {
        this.stuclass = stuclass;
    }

    public String getPhonenumber() {
        return phonenumber;
    }

    public void setPhonenumber(String phonenumber) {
        this.phonenumber = phonenumber;
    }

    public String getQq() {
        return qq;
    }

    public void setQq(String qq) {
        this.qq = qq;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getMajor() {
        return major;
    }

    public void setMajor(int major) {
        this.major = major;
    }

    public String getIdea() {
        return idea;
    }

    public void setIdea(String idea) {
        this.idea = idea;
    }

    @Override
    public String toString() {
        return "addDeliverStudent{" +
                "name='" + studentname + '\'' +
                ", studentid='" + studentid + '\'' +
                ", sex=" + stusex +
                ", StudentClass='" + stuclass + '\'' +
                ", phonenumber='" + phonenumber + '\'' +
                ", QQ='" + qq + '\'' +
                ", email='" + email + '\'' +
                ", major=" + major +
                ", idea='" + idea + '\'' +
                '}';
    }
}
