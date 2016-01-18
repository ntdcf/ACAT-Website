package com.CAL.sql;

import com.CAL.CALImplement.NoticeInterface;
import com.CAL.model.NoticeModel;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Summer7C on 2015/10/24.
 */
@Service
public class NoticeSQL implements NoticeInterface{
    String resource="com/CAL/config/MyBatisConfig.xml";             //配置文件的路径
    InputStream inputStream=null;
    SqlSessionFactory sqlSessionFactory=null;
    SqlSession session=null;


    public void create(){                                               //构造方法主要用来连接配置文件创建工厂Session
        try {
            inputStream= Resources.getResourceAsStream(resource);    //打开配置文件
        } catch (IOException e) {
            e.printStackTrace();
        }
        sqlSessionFactory=new SqlSessionFactoryBuilder().build(inputStream);
        session=sqlSessionFactory.openSession();                    //创建Session
    }


    public boolean addNotice(NoticeModel notice) {
        String addNoticeClass="com.CAL.config.NoticMapper.addNewNotice";
        session.insert(addNoticeClass,notice);
        session.commit();
        session.close();
        return true;
    }

    @Override
    public List<NoticeModel> findNotice() {
        String findNoticeClass="com.CAL.config.NoticMapper.findNotice";
        List<NoticeModel> list=new ArrayList<NoticeModel>();
        list=session.selectList(findNoticeClass);
        session.close();
        return list;
    }


}
