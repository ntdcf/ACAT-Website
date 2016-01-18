function $(id) { return document.getElementById(id); } 
//window.onload同时加载多个事件
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
// 点击左右按钮，切换当前内容
function changeOver(){
     var liList=$('client-tab').getElementsByTagName('li');
     var index=0;
     $('leftBtn').onclick=function(){
        Left();
     }
     $('rightBtn').onclick=function(){
        Right();
     }
      function changeOption(curIndex){
        for(var j=0;j<liList.length;j++){
            liList[j].style.display="none";
        }
        liList[curIndex].style.display="block";
        index=curIndex;
    }
     function Left(){
        index=index-1;
        if(index<0){
            index=liList.length-1;
        }
        changeOption(index);
    }
    function Right(){
        index=index+1;
        if(index>=liList.length){
            index=0;
        }
        changeOption(index);
    }
  }
  //点击新增事件
 function addBox(){
	if($('addMember')){
		$('addMember').onclick=function(){
        $('z-show').style.display='block';
		}
		$('lyclose').onclick=function(){
        $('z-show').style.display='none';
		}
	}
}
// function handleFiles(){
//     var path;
//     path=document.forms[0].FileUpload.value;      //C:\Documents and Settings\hud\桌面\AddFile.jpg
//     var aa;
//     aa=path.split('.');
//     document.all('TbxName').value=aa[aa.length-1];  //jpg 结果

//     var name;
//     name=path.split('\\');
//     var bb=name[name.length-1];             
//     document.all('Tbx_FileName').value=bb.substr(0,bb.indexOf('.')); 
//     document.getElementById('preview').style.background='url('+document.all('Tbx_FileName').value+')';
// }  
addLoadEvent(addBox);
addLoadEvent(changeOver);
  