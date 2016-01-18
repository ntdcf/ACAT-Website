/* 
* @Author: anchen
* @Date:   2015-11-15 16:37:12
* @Last Modified by:   anchen
* @Last Modified time: 2015-11-15 18:52:15
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
function addDiv(){
    var oDiv=document.createElement('div');
    var content=document.getElementsByClassName('content')[0];
    oDiv.setAttribute('id','backTop');
    oDiv.innerHTML='<div class="bttbg"></div>';
    content.appendChild(oDiv);
    backTop();
}
function backTop(){
  var oTop = document.getElementById('backTop');
  var timer=null;
  window.onscroll = function(){
    var scrolltop = document.documentElement.scrollTop || document.body.scrollTop;
    if(scrolltop>0){
        oTop.className='showme';
    }
    if(scrolltop==0){
        oTop.className=' ';
    }
  }
  oTop.onclick = function(){
        document.documentElement.scrollTop = document.body.scrollTop =0;
     backTop();
  }
} 
addLoadEvent(addDiv);
