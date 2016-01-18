package com.CAL.CALImplement;

import com.CAL.model.MemberModel;

import java.util.List;

/**
 * Created by Summer7C on 2015/10/17.
 */
public interface MemberInterface {
    public void createMember();
    public String addMember(MemberModel member);
    public List findMember();
}
