package com.CAL.sql;

import com.CAL.CALImplement.StudentInterface;
import com.CAL.model.addDeliverStudent;
import org.apache.ibatis.exceptions.PersistenceException;
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
 * Created by Summer7C on 2015/10/9.
 */

@Service
public class UserSQL implements StudentInterface {
    String resource="com/CAL/config/MyBatisConfig.xml";             //配置文件的路径
    InputStream inputStream=null;
    SqlSessionFactory sqlSessionFactory=null;
    SqlSession session=null;


    public void createUserSQL(){                                               //构造方法主要用来连接配置文件创建工厂Session
        try {
            inputStream=Resources.getResourceAsStream(resource);    //打开配置文件
        } catch (IOException e) {
            e.printStackTrace();
        }
        sqlSessionFactory=new SqlSessionFactoryBuilder().build(inputStream);
        session=sqlSessionFactory.openSession();                    //创建Session
    }

    public int addUser(addDeliverStudent student){                                       //添加报名人的方法
        //对应的Mapper中的id
        String addUserClass="com.CAL.config.userMapper.addNewPerson";

        //查询数据库中是否存在这个用户
        addDeliverStudent studentId=session.selectOne("com.CAL.config.userMapper.searchStudent",student.getStudentid());
        //如果没有查到，则说明该用户没有报名，则将这个用户信息写入数据库中

        if(student.getStudentid().equals("")
                ||student.getEmail().equals("")
                ||student.getPhonenumber().equals("")
                ||student.getStudentname().equals("")){     //如果有必填信息没有填返回3说明没有正确填写
            return 3;
        }else if(studentId==null){
            session.insert(addUserClass,student);//添加报名信息
            session.commit();
            session.close();
            return 1;                           //返回值为1，则说明报名成功
        }else if(studentId.getStudentid().equals(student.getStudentid())){  //如果报名的id和表中的id相同，则说明了已经报过名了
            return 0;                           //返回0
        }else{
            return 2;                           //其他错误返回2
        }

    }

    public List<addDeliverStudent> getUser(int page){
        List<addDeliverStudent> list=new ArrayList<addDeliverStudent>();
        String findUserClass="com.CAL.config.userMapper.findStudent";
        list=session.selectList(findUserClass);
        session.close();
        return list;
    }
}
