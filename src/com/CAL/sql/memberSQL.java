package com.CAL.sql;


import com.CAL.CALImplement.MemberInterface;
import com.CAL.model.MemberModel;
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
 * Created by Summer7C on 2015/10/17.
 */
@Service
public class memberSQL implements MemberInterface {
    String resource="com/CAL/config/MyBatisConfig.xml";             //配置文件的路径
    InputStream inputStream=null;
    SqlSessionFactory sqlSessionFactory=null;
    SqlSession session=null;

    public void createMember(){
        try {
            inputStream= Resources.getResourceAsStream(resource);    //打开配置文件
        } catch (IOException e) {
            e.printStackTrace();
        }
        sqlSessionFactory=new SqlSessionFactoryBuilder().build(inputStream);
        session=sqlSessionFactory.openSession();                    //创建Session
    }

    public String addMember(MemberModel member) {
        String MemberClass="com.CAL.config.memberMapper.addMember";
        session.insert(MemberClass,member);
        session.commit();
        session.close();
        return "添加成功";
    }

    public List<MemberModel> findMember(){
        String findMemberClass="com.CAL.config.memberMapper.findMember";
        List<MemberModel> list=new ArrayList<MemberModel>();
        list=session.selectList(findMemberClass);
        session.close();
        return list;
    }
}
