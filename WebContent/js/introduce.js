/**
 * Created by lenovo on 2015/10/15.
 */
window.onscroll=function(){
    var  scrollTop=getScrollTop();
    var toTop=document.getElementsByClassName("toTop")[0];
    if(scrollTop>document.body.clientHeight){

    }
};
/*��ȡ����������*/
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
/*��������*/
/*
*  @param acceleration ���ٶ�
*  @param time ʱ���� (����)
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

    // ��������ҳ�涥���Ĵ�ֱ����
    var y = Math.max(y1, Math.max(y2, y3));
    // �������� = Ŀǰ���� / �ٶ�, ��Ϊ����ԭ��ԽС, �ٶ��Ǵ��� 1 ����, ���Թ��������Խ��ԽС
    var speed = 1 + acceleration;
    window.scrollTo(Math.floor(x / speed), Math.floor(y / speed));
    // ������벻Ϊ��, �������õ���������
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

