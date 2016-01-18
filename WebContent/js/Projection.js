/* 
* @Author: anchen
* @Date:   2015-10-15 18:35:08
* @Last Modified by:   anchen
* @Last Modified time: 2015-11-16 19:19:55
*/
function addLoadEvent(func){ 
    var oldonload = window.onload; 
    if (typeof window.onload != 'function') { 
    window.onload = func; 
    } 
    else { 
    window.onload = function(){ 
    oldonload(); 
    func(); 
    } 
   } 
}
// 定义快捷方式
function $(id) { return document.getElementById(id); } 
// 点击新增事件
function addBox(){
    $('addMember').onclick=function(){
    $('z-show').style.display='block';
    }
    $('lyclose').onclick=function(){
        $('z-show').style.display='none';
    }
}
// 获取输入的文本
 function strlength(){
      var str=document.forms[0].introduction.value;
      return 65-str.length;
}
function showMsg(){
    var oAct=document.forms[0].introduction;
    // 聚焦时显示提示
    oAct.onfocus=function(){
        var oDiv=document.createElement('div');
        oDiv.className='textLength';
        oDiv.id='textLength';
        oDiv.innerHTML='您还可以输入'+strlength()+'个字符！';
        $('info-text').appendChild(oDiv);
    }
    // 输入时改变显示
    oAct.onkeyup=function(){
        $('textLength').innerHTML='您还可以输入'+strlength()+'个字符！';
        if(strlength()<0){
            alert("温馨提示：继续输入将超出限定字符数，可能导致超出部分无法显示！");
            $('bt1').disabled = true;
            $('bt1').style.backgroundColor='#ccc';
        }
        else{
            $('bt1').disabled = false;
            $('bt1').style.backgroundColor='#3F89EC';
        }
    }
    // 失焦时显示
    oAct.onblur=function(){
        $('info-text').removeChild($('textLength'));
    }
}
// 获取当前项目列表的宽高
addLoadEvent(addBox);
addLoadEvent(showMsg);