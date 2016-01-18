/* 
* @Author: anchen
* @Date:   2015-10-11 12:20:57
* @Last Modified by:   anchen
* @Last Modified time: 2015-11-14 15:02:57
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
function $(id) { return document.getElementById(id); }
// 点击标题，显示具体内容 
function clickText(){
    var index=0;
    var aList=$('MsgShow').getElementsByTagName('a');
    var spanList=$('MsgShow').getElementsByClassName('spanText');
    for(var i=0; i<aList.length; i++){
        aList[i].index = i;
        aList[i].onclick=function(){
            check(this.index);
     }
    }
    function check(Target){
        var index=Target;
        if(spanList[index].style.display == 'none'){
            spanList[index].style.display = 'block';
        }else if(spanList[index].style.display == 'block'){
            spanList[index].style.display = 'none';
        }
    }
}
// 富文本编辑框的显示与隐藏
function textArea(){
    $('addMember').onclick = function(){
        $('Textarea').style.display = 'block';
    }
    $('cancel').onclick = function(){
        $('Textarea').style.display = 'none';
    }
}
addLoadEvent(clickText);
addLoadEvent(textArea);