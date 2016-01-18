/**
 * Created by lenovo on 2015/10/15.
 */
window.onscroll=function(){
    var  scrollTop=getScrollTop();
    var toTop=document.getElementsByClassName("toTop")[0];
    if(scrollTop>document.body.clientHeight){

    }
};
/*获取鼠标滚动距离*/
function getScrollTop() {
    var scrollPos;
    if (window.pageYOffset) {
        scrollPos = window.pageYOffset;
    }
    else if (document.compatMode && document.compatMode != 'BackCompat')
    { scrollPos = document.documentElement.scrollTop; }
    else if (document.body) { scrollPos = document.body.scrollTop; }
    return scrollPos;
}
/*。。。。*/
/*
*  @param acceleration 加速度
*  @param time 时间间隔 (毫秒)
 **/
function goTop(acceleration, time) {
    acceleration = acceleration || 0.1;
    time = time || 16;
    var toTop=document.getElementById("toTop");
    var y1 = 0;
    var y2 = 0;
    var y3 = 0;

    if (document.documentElement) {
        y1 = document.documentElement.scrollTop || 0;
    }

    if (document.body) {
        y2 = document.body.scrollTop || 0;
    }

    var y3 = window.scrollY || 0;

    // 滚动条到页面顶部的垂直距离
    var y = Math.max(y1, Math.max(y2, y3));
    // 滚动距离 = 目前距离 / 速度, 因为距离原来越小, 速度是大于 1 的数, 所以滚动距离会越来越小
    var speed = 1 + acceleration;
    window.scrollTo(Math.floor(x / speed), Math.floor(y / speed));
    // 如果距离不为零, 继续调用迭代本函数
    if(  y > 0) {
        var invokeFunction = "goTop(" + acceleration + ", " + time + ")";
        if(toTop.style.display=="none"){
            toTop.style.display="block";
        }
        window.setTimeout(invokeFunction, time);
    }
    else if(y==0){
        toTop.style.display="none";
    }
}

