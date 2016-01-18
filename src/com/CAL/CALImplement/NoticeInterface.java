package com.CAL.CALImplement;

import com.CAL.model.NoticeModel;

import java.util.List;

/**
 * Created by Summer7C on 2015/10/24.
 */
public interface NoticeInterface {
    public void create();
    public boolean addNotice(NoticeModel notice);
    public List findNotice();
}
