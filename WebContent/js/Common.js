/* 
* @Author: anchen
* @Date:   2015-09-23 17:34:11
* @Last Modified by:   anchen
* @Last Modified time: 2015-10-26 20:02:55
*/
// 定义快捷方式
function $(id) { return document.getElementById(id); } 
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