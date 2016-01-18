/**
 * Created by lenovo on 2015/10/10.
 */
/*表单验证*/
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
            flag=false;
        }else if(reg.test(Name.value)==true){
            sName.innerHTML="<font color='red'>*姓名填写有误</font>"
            flag=false;
        }else{
            sName.innerHTML="";
            flag=true;
        }

    }
/*验证学号*/
    function check_Id(){
        var reg=/^0\d{7}$/;

        if(Id.value==""){
            sId.innerHTML="<font color='red'>*学号不能为空</font>";
            flag=false;
        }else if(reg.test(Id.value)==false){
            sId.innerHTML="<font color='red'>*学号填写有误</font>";
            flag=false;
        }else{
            sId.innerHTML="";
            flag=true;
        }
    }
/*验证电话*/
    function check_Tel(){
        var reg=/^1\d{10}$/;

        if(Tel.value==""){
            sTel.innerHTML="<font color='red'>*电话不能为空</font>";
            flag=false;
        }else if(reg.test(Tel.value)==false){
            sTel.innerHTML="<font color='red'>*电话填写有误</font>";
            flag=false;
        }else{
            sTel.innerHTML="";
            flag=true;
        }
    }
/*验证邮箱*/
    function check_Email(){
        var reg=/^(\w-*\.*)+@(\w-?)+(\.\w{2,})+$/;

        if(Email.value==""){
            sEmail.innerHTML="<font color='red'>*邮箱不能为空</font>";
            flag=false;
        }else if(reg.test(Email.value)==false){
            sEmail.innerHTML="<font color='red'>*邮箱填写有误</font>"
            flag=false;
        }else{
            sEmail.innerHTML="";
            flag=false;
        }
    }
function check_All()
{
    check_Name();
    check_Id();
    check_Email();
    check_Tel();
    if(flag==false){
       form.onsubmit=function(){
           return false;
       }
    }
    else {
        form.onsubmit=function(){
            return true;
        };
    }
}
















