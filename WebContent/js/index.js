$(document).ready(function(e){
        var index=0;
        var timer=null;
        var flag="go_top";

        var pointL=-1536;
        var pointR=0;
        var oSLi=$("#small ul li");
        var Text=$("#smallText");
        var oS=$("#small");

       /*移动端*/
        var pcIndex=0;
        var pcTimer=null;
        var pcFlag="go_top";

        var pcPointL=-300;
        var pcPointR=0;
        var pcSLi=$("#pcSmall ul li");
        /*中间轮播图*/
if (timer) {
            clearInterval(timer);
            timer = null;
        }
timer = setInterval(autoPlay, 2000);
for (var i = 0; i < oSLi.length; i++) {
            oSLi[i].id = i;
        }
function autoPlay() {
            index++;
            if (index >= oSLi.length)
                index = 0;
            changeOption(index);
        }
function changeOption(curIndex) {
            for (var j = 0; j < oSLi.length; j++) {
                oSLi[j].style.display = "none";
            }
            oSLi[curIndex].style.display = "block";
            index = curIndex;
        }
/*导航*/
$("#nav img").click(function(){
            if($(".Nav").width()==0){
                $(".Nav").animate({width:92+"%"},1000);
            }
            else{
                $(".Nav").animate({width:"0"},1000);
            }
        });

/*移动端导航*/
$("#pcNav img").click(function(){
            if($(".pcNAv").width()==0){
                $(".pcNAv").animate({width:100+"%"},1000);
            }
            else{
                $(".pcNAv").animate({width:"0"},1000);
            }
        });
/*大图轮播*/
function showImg(){
        if(pointL==0 || pointR==-1536){
                flag="go_top";
            }
        else if(pointL==-1536 || pointR==0){
            flag="go_bottom";
        }
        if(flag=="go_top"){
            $(".bigLeft").animate({marginTop:pointL+"px"},1000);
            $(".bigRight").animate({marginTop:pointR+"px"},1000);
            pointL-=768;
            pointR+=768;
        }
        else if(flag=="go_bottom"){

            $(".bigLeft").animate({marginTop:pointL+"px"},1000);
            $(".bigRight").animate({marginTop:pointR+"px"},1000);
            pointL+=768;
            pointR-=768;
        }
    }
setInterval(showImg,2000);
/*移动端大图轮播*/
function pcShowImg(){
        if(pcPointL==0 || pcPointR==-300){
            pcFlag="go_left";
        }
        else if(pcPointL==-300 || pcPointR==0){
            pcFlag="go_right";
        }
        if(pcFlag=="go_left"){
            $(".pcBigLeft").animate({marginLeft:pcPointL+"%"},1000);
            $(".pcBigRight").animate({marginLeft:pcPointR+"%"},1000);

            pcPointL-=100;
            pcPointR+=100;
        }
        else if(pcFlag=="go_right"){
            $(".pcBigLeft").animate({marginLeft:pcPointL+"%"},1000);
            $(".pcBigRight").animate({marginLeft:pcPointR+"%"},1000);
            pcPointL+=100;
            pcPointR-=100;
        }
    }
    setInterval(pcShowImg,3000); 
});
