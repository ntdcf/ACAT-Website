package com.CAL.controller;

import com.CAL.CALImplement.MemberInterface;
import com.CAL.CALImplement.NoticeInterface;
import com.CAL.CALImplement.ProjectionInterface;
import com.CAL.CALImplement.StudentInterface;
import com.CAL.model.MemberModel;
import com.CAL.model.NoticeModel;
import com.CAL.model.ProjectionModel;
import com.CAL.model.addDeliverStudent;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.regex.*;


//页面控制器
@Controller
public class CALPageController {

    private static final Log logger= LogFactory.getLog(CALPageController.class);

    //依赖注入
    @Autowired
    private StudentInterface studentInterface;
    @Autowired
    private MemberInterface memberInterface;
    @Autowired
    private NoticeInterface noticeInterface;
    @Autowired
    private ProjectionInterface projectionInterface;

    //跳转至主页面
    @RequestMapping(value = "/")
    public String indexPage(){
        return "index";
    }

    @RequestMapping(value="/FreshTable.html")
    public String MainPage(HttpSession session,HttpServletRequest request,Model model){
        String username=request.getParameter("UserName");           //设定固定的用户名和密码
        String password=request.getParameter("Password");
        System.out.println(username);
        if(session.getAttribute("root")!=null){
            List<addDeliverStudent> list=new ArrayList<addDeliverStudent>();
            try {
                studentInterface.createUserSQL();                               //获取数据库中的值
                list=studentInterface.getUser(0);
            } catch (Exception e) {
                e.printStackTrace();
            }
            model.addAttribute("student",list);                                 //获取到的报名信息获取
            return "FreshTable";
        }else if(session.getAttribute("root")==null&&username==null&&password==null){
            return "login";
        }else if(username.equals("root")&&password.equals("callabroot")){       //用户名为root密码为callabroot
            List<addDeliverStudent> list=new ArrayList<addDeliverStudent>();
            try {
                studentInterface.createUserSQL();                               //获取数据库中的值
                list=studentInterface.getUser(0);
            } catch (Exception e) {
                e.printStackTrace();
            }

            session.setAttribute("root","root");                                //将登录信息写入session中
            model.addAttribute("student",list);                                 //获取到的报名信息获取
            return "FreshTable";                                                //跳转到报名列表的页面
        }else return "login";                                                     //如果都不对转到登录界面
    }

    @RequestMapping(value="/login.html")
    public String adminLogin(HttpSession session,Model model){
        if(session==null){
            return "login";
        }else{
            if(session.getAttribute("root")==null) return "login";          //如果session中没有存root的登录名则返回让重新登录
            else if(session.getAttribute("root")!=null&&session.getAttribute("root").equals("root")){
                List<addDeliverStudent> list=new ArrayList<addDeliverStudent>();
                try {
                    studentInterface.createUserSQL();                               //获取数据库中的值
                    list=studentInterface.getUser(0);
                } catch (Exception e) {
                    e.printStackTrace();
                }
                model.addAttribute("student",list);                                 //获取到的报名信息获取
                return "FreshTable";                                        //如果session中的信息正确则直接到显示报名信息页面
            }else return "login";
        }
    }

    @RequestMapping(value="/success")
    public void successAdd(addDeliverStudent addstudent,HttpServletResponse response)throws IOException{
        logger.info(addstudent);        //后台输出信息获取到的数据
        int statusAJAX;                             //AJAX的返回数据根据UserSQL的方法返回值来确定返回的内容
        response.setCharacterEncoding("utf-8");
        PrintWriter out=response.getWriter();       //输出数据

        Pattern phone=Pattern.compile("^1\\d{10}$");
        Pattern num= Pattern.compile("^0\\d{7}$");
        Pattern email=Pattern.compile("^(\\w-*\\.*)+@(\\w-?)+(\\.\\w{2,})+$");
        
        /* 测试使用\(^o^)/~
         * System.out.println(num.matcher(addstudent.getStudentid()).matches());
         * System.out.println(phone.matcher(addstudent.getPhonenumber()).matches());
         * System.out.println(email.matcher(addstudent.getEmail()).matches());
		*/
        
        
        try {
            studentInterface.createUserSQL();       //建立MyBatista的session工厂
        } catch (Exception e) {
            e.printStackTrace();
        }
        try {
        	//如果没有正确填写则不通过，╮(╯_╰)╭
            if(!(phone.matcher(addstudent.getPhonenumber()).matches()
                    &&num.matcher(addstudent.getStudentid()).matches()
                    &&email.matcher(addstudent.getEmail()).matches())) {
                out.println("请正确填写~");
                return;
            }

            statusAJAX=studentInterface.addUser(addstudent);        //接收返回的状态参数
            if(0==statusAJAX){                                      //如果但会值为0，则说明已经报过名了报名信息已存储在数据库
                out.println("你已经报过名了~");
            }else if(1==statusAJAX){                                //如果返回值为1，则说明报名成功，报名信息已经填写到了数据库
                out.println("报名成功！");
            }else if(3==statusAJAX){
                out.println("请正确填写注册信息~");                    //位3的时候证明信息填写有误
            }else{
                out.println("报名失败，请重试~");                      //如果返回值为其他则说明报名没有成功，肯能是其他问题，信息可能并没有写到数据库中，可以重新报名
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @RequestMapping(value="/UpdateMemberSuccess")
    public String UpdateSuccess(Model model,MemberModel member,HttpServletRequest servletRequest,
    		RedirectAttributes redirectAttributes){
        MultipartFile file=member.getImage();
        String FileName=String.valueOf(file.getOriginalFilename().hashCode());
        File imageFile=new File(servletRequest.getServletContext().getRealPath("/MemberImages"),FileName);
        String path="MemberImages/"+FileName;
        member.setPathpicture(path);
        memberInterface.createMember();
        memberInterface.addMember(member);
        try {
            file.transferTo(imageFile);
            //model.addAttribute("imagePath", path);
        } catch (IllegalStateException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        memberInterface.createMember();
        List<MemberModel> memberlist=memberInterface.findMember();
        //model.addAttribute("member",memberlist);
        //重定位到Member.html,防止表单二次提交
        redirectAttributes.addFlashAttribute("member", memberlist);
        return "redirect:Member.html";
    }

    @RequestMapping(value="/AddNoticeSuccess")
    public String NoticeSuccess(NoticeModel notice,Model model,
    		RedirectAttributes redirectAttributes){
    	//通知的时间格式精确到秒
        SimpleDateFormat df = new SimpleDateFormat("yyyy.MM.dd.HH:mm:ss");
        String time=df.format(new Date());
        notice.setTime(time);
        /*
         * 测试使用，输出notice的字符串
         * System.out.println(notice);
         * 
         */
        noticeInterface.create();		//创建数据库的session
        noticeInterface.addNotice(notice);		//向表中添加notice中的元素

        List<NoticeModel> NoticeList=new ArrayList<NoticeModel>();
        noticeInterface.create();
        NoticeList=noticeInterface.findNotice();

        //model.addAttribute("NoticeList", NoticeList);
        redirectAttributes.addFlashAttribute("NoticeList", NoticeList);
        return "redirect:Inform.html";
    }

    @RequestMapping(value="/Projection.html")
    public String toPro(Model model){
        List<ProjectionModel> projectionModelList=new ArrayList<ProjectionModel>();
        projectionInterface.create();
        projectionModelList=projectionInterface.findProjecion();
        model.addAttribute("projectionModelList",projectionModelList);
        return "Projection";
    }

    //上传作品信息到文件夹
    @RequestMapping(value="/ProjectSuccess")
    public String ProjectSuccess(ProjectionModel projection,HttpServletRequest servletRequest,Model model,
    		RedirectAttributes redirectAttributes) {
        MultipartFile file = projection.getImage();
        
      //将文件名转为哈希值，在将哈希值转化为字符串
        String FileName = String.valueOf(file.getOriginalFilename().hashCode());
        //转成哈希值
        //MemberImages文件夹中保存
        File imageFile = new File(servletRequest.getServletContext().getRealPath("/MemberImages"), FileName);
        String path = "MemberImages/" + FileName;	//路径名称为path
        projection.setWorkpicture(path);
        System.out.println(path);
        projectionInterface.create();
        projectionInterface.addProjection(projection);
        try {
            file.transferTo(imageFile);
        } catch (IllegalStateException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

        List<ProjectionModel> projectionModelList=new ArrayList<ProjectionModel>();
        projectionInterface.create();
        projectionModelList=projectionInterface.findProjecion();
        //model.addAttribute("projectionModelList",projectionModelList);
        //flash属性
        //重定向防止表单二次提交
        redirectAttributes.addFlashAttribute("projectionModelList", projectionModelList);
        return "redirect:Projection.html";
    }

    //跳转至实验室简介页面
    @RequestMapping(value="/introduce.html")
    public String IntroduceLab(){
        return "introduce";         //实验室简介JSP文件为introduce
    }

    //跳转至实验室成员页面
    @RequestMapping(value = "/Member.html")
    public String LabPerson(Model model){
    	//获取数据库中的成员以及成员的信息
        memberInterface.createMember();
        List<MemberModel> member=new ArrayList<MemberModel>();
        member=memberInterface.findMember();
        model.addAttribute("member",member);		//发送到页面

        return  "Member";
    }
    @RequestMapping(value = "/Inform.html")
    public String toInform(Model model){
        List<NoticeModel> NoticeList=new ArrayList<NoticeModel>();
        noticeInterface.create();
        NoticeList=noticeInterface.findNotice();

        model.addAttribute("NoticeList", NoticeList);
        return "Inform";
    }
    //跳转至实验室作品页面
    @RequestMapping(value="/index.html")
    public String LabPresent(){
        return "index";           //跳转到主页
    }

    @RequestMapping(value="/joinus.html")
    public String JoinUs(){
        return "joinus";
    }

    @RequestMapping(value="/unload")
    public String unload(HttpSession session){
        session.removeAttribute("root");
        return "index";
    }
    
    @RequestMapping(value="/CALblog.html")
    public String HAHAHA(){
    	return "HAHAHA";
    }
    
    @RequestMapping(value="/Resource.html")
    public String HAHAHA2(){
    	return "HAHAHA";
    }
}
