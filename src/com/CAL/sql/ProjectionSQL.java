package com.CAL.sql;

import com.CAL.CALImplement.ProjectionInterface;
import com.CAL.model.ProjectionModel;
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
public class ProjectionSQL implements ProjectionInterface {
    String resource="com/CAL/config/MyBatisConfig.xml";             //配置文件的路径
    InputStream inputStream=null;
    SqlSessionFactory sqlSessionFactory=null;
    SqlSession session=null;

    @Override
    public void create() {
        try {
            inputStream= Resources.getResourceAsStream(resource);    //打开配置文件
        } catch (IOException e) {
            e.printStackTrace();
        }
        sqlSessionFactory=new SqlSessionFactoryBuilder().build(inputStream);
        session=sqlSessionFactory.openSession();                    //创建Session
    }

    @Override
    public boolean addProjection(ProjectionModel projection) {
        String addProjectionClass="com.CAL.config.worksMapper.addNewWorks";
        session.insert(addProjectionClass,projection);
        session.commit();
        session.close();
        return true;
    }

    @Override
    public List findProjecion() {
        List<ProjectionModel> list=new ArrayList<ProjectionModel>();
        String findClass="com.CAL.config.worksMapper.findWork";
        list=session.selectList(findClass);
        session.close();
        return list;
    }
}
