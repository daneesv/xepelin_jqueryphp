$(document).ready(function(){

    //Service worker
    if("serviceWorker" in navigator){
        navigator.serviceWorker.register("../../sw.js",{scope:"/"},{
            scope:"."
        }).then(function(registration){
            //Registration was successful
        },function(err){
            //Registration failed
        });
    }

    //Detect touch (mouse hover event)
    var isTouch=false;
    var isTouchTimer;
    var touchClass="";
    //Touch input
    document.addEventListener("touchstart",function(event){
        clearTimeout(isTouchTimer);
        isTouch=true;
        if(touchClass!="touch"){
            touchClass="touch";
            $("body").addClass("touch");
        }
        isTouchTimer=setTimeout(function(){isTouch=false},2000);
    },false);
    //All inputs (mouse, touch, trackpad)
    document.addEventListener("mouseover",function(event){
        if(!isTouch && touchClass=="touch"){
            isTouch=false;
            touchClass="";
            $("body").removeClass("touch");
        }
    },false);

    //On scroll
    $(window).on("scroll",function(){
        var scroll=$(window).scrollTop();
        if(scroll<=0){
            $("#nav").removeClass("nav-fixed");
        }else{
            $("#nav").addClass("nav-fixed");
        }
    });

    //Mobile menu
    $(".nav-menu").click(function(event){
        mobileMenu("show");
    });
    $("#mobile,.mobile-close").click(function(event){
        event.stopPropagation();
        mobileMenu("hide");
    });

    //Modal
    $(".cover-intro-btn").click(function(event){
        event.preventDefault();
        modal("open");
    });
    $(".modal-close,.form-submit").click(function(event){
        modal("close");
    });
    
    //Testimonials
    $(".testimonial-item").click(function(event){
        $(".testimonial-item").removeClass("testimonial-item-on");
        $(this).addClass("testimonial-item-on");
        $(".testimonial-detail").css("display","none");
       $("#testimonial"+$(this).data("id")).fadeIn(500,"easeOutQuad");
    });

    //Solutions
    const swiper=new Swiper(".swiper",{
        slideActiveClass:"solution-active",
        grabCursor:true,
        pagination:{
            el:".swiper-pagination",
            clickable:1
        },
        on:{
            slideChange:function(){
                $(".swiper-bg").addClass("swiper-change");
                setTimeout(()=>{
                    $(".swiper-bg").removeClass("swiper-change");
                },250);
            }
        }
    });

});

//Mobile menu
var mobileDisplay;
function mobileMenu(action){
    if(action=="show"){
        setScroll("disable");
        clearTimeout(mobileDisplay);
        $("#mobile").css("display","block");
        $("#mobile").removeClass("mobile-hide");
        $("#mobile").addClass("mobile-show");
    }else if(action=="hide"){
        setScroll("enable");
        $("#mobile").removeClass("mobile-show");
        $("#mobile").addClass("mobile-hide");
        mobileDisplay=setTimeout(function(){
            $("#mobile").css("display","none");
        },300);
    }
}

//Modal
var modalDisplay;
function modal(action){
    if(action=="open"){
        clearTimeout(modalDisplay);
        setScroll("disable");
        $(".modal-overlay").css("display","block").removeClass("modal-overlay-hide").addClass("modal-overlay-show");
        $("#modal").css("display","block");
        $("#modal-window").css("display","block").removeClass("modal-window-hide").addClass("modal-window-show");
    }else if(action=="close"){
        setScroll("enable");
        $(".modal-overlay").removeClass("modal-overlay-show").addClass("modal-overlay-hide");
        $("#modal-window").removeClass("modal-window-show").addClass("modal-window-hide");
        modalDisplay=setTimeout(function(){
            $("#modal,.modal-overlay").css("display","none");
        },300);
    }
}

//Set scroll
var lockedScroll=false;
var prevScrollTop=0;
var prevScrollLeft=0;
function setScroll(action){
    if(action=="disable"){
        if(lockedScroll==false){
            prevScrollTop=$(window).scrollTop();
            prevScrollLeft=$(window).scrollLeft();
            $("html").addClass("noscroll").css({"top":"-"+prevScrollTop+"px","left":"-"+prevScrollLeft+"px"});
            lockedScroll=true;
        }
    }else if(action=="enable"){
        $("html").removeClass("noscroll");
        window.scrollTo(prevScrollLeft,prevScrollTop);
        prevScrollTop=0;
        prevScrollLeft=0;
        lockedScroll=false;
    }
}