var Btn = document.getElementById("subBtn");
var form = document.getElementsByTagName("form")[0];
var Name = document.getElementById("name");
var Id = document.getElementById("id");
var Tel = document.getElementById("tel");
var Email=document.getElementById("email");
var sName=document.getElementById('spanName');
var sId=document.getElementById('spanId');
var sTel=document.getElementById('spanTel');
var sEmail=document.getElementById('spanEmail');
var oResult=document.getElementById("result");
var flag=false;
/*验证姓名*/
function check_Name(){
    var reg=/^\d*$/;

    if(Name.value==""){
        sName.innerHTML="<font color='red'>*姓名不能为空</font>";
        return false;
    }else if(reg.test(Name.value)==true){
        sName.innerHTML="<font color='red'>*姓名填写有误</font>"
        return false;
    }else{
        sName.innerHTML="";
        return true;
    }

}
/*验证学号*/
function check_Id(){
    var reg=/^0\d{7}$/;

    if(Id.value==""){
        sId.innerHTML="<font color='red'>*学号不能为空</font>";
        return false;
    }else if(reg.test(Id.value)==false){
        sId.innerHTML="<font color='red'>*学号填写有误</font>";
        return false;
    }else{
        sId.innerHTML="";
        return true;
    }
}
/*验证电话*/
function check_Tel(){
    var reg=/^1\d{10}$/;

    if(Tel.value==""){
        sTel.innerHTML="<font color='red'>*电话不能为空</font>";

        return false;
    }else if(reg.test(Tel.value)==false){
        sTel.innerHTML="<font color='red'>*电话填写有误</font>";
        return false;
    }else{
        sTel.innerHTML="";
        return true;
    }
}
/*验证邮箱*/
function check_Email(){
    var reg=/^(\w-*\.*)+@(\w-?)+(\.\w{2,})+$/;

    if(Email.value==""){
        sEmail.innerHTML="<font color='red'>*邮箱不能为空</font>";
        return false;
    }else if(reg.test(Email.value)==false){
        sEmail.innerHTML="<font color='red'>*邮箱填写有误</font>"
        return false;
    }else{
        sEmail.innerHTML="";
        return  true;
    }
}
function check_All()
{
    var flag1=check_Name();
    var flag2=check_Id();
    var flag3=check_Email();
    var flag4=check_Tel();
    if(flag1 && flag2 && flag3 &&flag4){
        form.onsubmit=function(){
            alert("有错");
            return false;
        }
    }
    else {
        form.onsubmit=function(){
            return true;
        };
    }
}



var xmlHttp;
function createXMLHttp(){
    if(window.XMLHttpRequest){
        xmlHttp=new XMLHttpRequest();
    }else{
        xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
}
function showMsg(){

    check_All();

    var studentname=document.getElementById("name").value;
    var studentid=document.getElementById("id").value;
    var stusex=document.getElementById("sex").value;
    var stuclass=document.getElementById("class").value;
    var phonenumber=document.getElementById("tel").value;
    var qq=document.getElementById("QQ").value;
    var email=document.getElementById("email").value;
    var major=document.getElementById("major").value;
    var idea=document.getElementById("idea").value;
    var string="studentname="+studentname
        +"&studentid="+studentid
        +"&stusex="+stusex
        +"&stuclass="+stuclass
        +"&phonenumber="+phonenumber
        +"&qq="+qq
        +"&email="+email
        +"&major="+major
        +"&idea="+idea;

    createXMLHttp();


    xmlHttp.onreadystatechange=showMsgCallback;

    xmlHttp.open("post","success",true);
    xmlHttp.setRequestHeader("Content-Type","application/x-www-form-urlencoded;charset=UTF-8");

    xmlHttp.send(string);
}
function showMsgCallback(){
    if(xmlHttp.readyState==4&&xmlHttp.status==200){
        var text=xmlHttp.responseText;
        alert(text);
    }
}
