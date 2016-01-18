package com.CAL.CALImplement;

import com.CAL.model.addDeliverStudent;

import java.util.List;

/**
 * Created by Summer7C on 2015/10/12.
 */
public interface StudentInterface {
    public void createUserSQL() throws Exception;
    public int addUser(addDeliverStudent student) throws Exception;
    public List getUser(int page) throws Exception;
}