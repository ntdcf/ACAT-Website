package com.CAL.model;

import org.springframework.web.multipart.MultipartFile;

/**
 * Created by Summer7C on 2015/10/17.
 */
public class MemberModel {
    private String membername;
    private String memberclass;
    private String Company;
    private String pathpicture;
    private MultipartFile image;


    public MultipartFile getImage() {
        return image;
    }

    public void setImage(MultipartFile image) {
        this.image = image;
    }

    public String getMembername() {
        return membername;
    }

    public void setMembername(String membername) {
        this.membername = membername;
    }

    public String getMemberclass() {
        return memberclass;
    }

    public void setMemberclass(String memberclass) {
        this.memberclass = memberclass;
    }

    public String getCompany() {
        return Company;
    }

    public void setCompany(String company) {
        Company = company;
    }

    public String getPathpicture() {
        return pathpicture;
    }

    public void setPathpicture(String pathpicture) {
        this.pathpicture = pathpicture;
    }

    @Override
    public String toString() {
        return "MemberModel{" +
                "membername='" + membername + '\'' +
                ", memberclass='" + memberclass + '\'' +
                ", Company='" + Company + '\'' +
                ", pathpicture='" + pathpicture + '\'' +
                ", image=" + image +
                '}';
    }
}
