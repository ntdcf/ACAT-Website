package com.CAL.model;

import org.springframework.web.multipart.MultipartFile;

/**
 * Created by Summer7C on 2015/10/24.
 */
public class ProjectionModel {
    private String workstudent;
    private String workname;
    private String introduction;
    private String workpicture;
    private MultipartFile image;

    public String getWorkstudent() {
        return workstudent;
    }

    public void setWorkstudent(String workstudent) {
        this.workstudent = workstudent;
    }

    public String getWorkname() {
        return workname;
    }

    public void setWorkname(String workname) {
        this.workname = workname;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }

    public MultipartFile getImage() {
        return image;
    }

    public void setImage(MultipartFile image) {
        this.image = image;
    }

    public String getWorkpicture() {
        return workpicture;
    }

    public void setWorkpicture(String workpicture) {
        this.workpicture = workpicture;
    }
}
