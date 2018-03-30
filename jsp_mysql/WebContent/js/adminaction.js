
$(document).ready(function(){
    	var t= $('input:hidden[name=t]').val();
        var pi= $('input:hidden[name=pi]').val();
        var pu= $('input:hidden[name=pu]').val();
        var pd= $('input:hidden[name=pd]').val();
        var gi= $('input:hidden[name=gi]').val();
        var gd= $('input:hidden[name=gd]').val();
        var ei= $('input:hidden[name=ei]').val();
        var ed= $('input:hidden[name=ed]').val();
        var ti= $('input:hidden[name=ti]').val();
        var tu= $('input:hidden[name=tu]').val();
        var td= $('input:hidden[name=td]').val();
        if(t=="n"){
            $("#trow").hide();
            $("#trow2").hide();
        }
        if(pi=="n"){
            $("#pinsert").hide();
            $(".clr1").hide();
            $("#imgup").hide();
        }
        if(pu=="n"){
            $("#pupdate").hide();
            $(".clr3").hide();
            $("#imgup").hide();
        }
        if(pd=="n"){
            $("#pdelete").hide();
            $(".clr2").hide();
        }
        if(ti=="n"){
            $("#tinsert").hide();
        }
        if(tu=="n"){
            $("#tupdate").hide();
        }
        if(td=="n"){
            $("#tdelete").hide();
        }
        if(gi=="n"){
            $(".grow2").hide();
        }
        if(gd=="n"){
            $(".del").hide();
        }
        if(ei=="n"){
            $(".einsert").hide();
            $(".eimage").hide();
        }
        if(ed=="n"){
            $(".edelete").hide();
        }
        if(pi=="y"){
            $("#imgup").show();
        }
        if(pu=="y"){
            $("#imgup").show();
        }
        if(ti=="y"){
            $("#tinsert").show();
        }
        if(tu=="y"){
            $("#tupdate").show();
        }
        if(td=="y"){
            $("#tdelete").show();
        }
    
    
    
    
    
    
    $("#profile").hide();
    $("#proimg").click(function(){
        $("#profile").toggle();
    })
    $("#imgcncl").click(function(){
        $("#profile").hide();
    })
    $("#team1").click(function(){
        $(this).addClass("active");
        $("#project1").removeClass("active");
        $("#gallery1").removeClass("active");
        $("#event1").removeClass("active");
        $("#testimonial1").removeClass("active");
        $(".team").css("transform","scale(1)");
        $(".project").css("transform","scale(0)");
        $(".gallery").css("transform","scale(0)");
        $(".event").css("transform","scale(0)");
        $(".testimonial").css("transform","scale(0)");
        
    });
    
    
    $("#project1").click(function(){
        $(this).addClass("active");
        $("#team1").removeClass("active");
        $("#gallery1").removeClass("active");
        $("#event1").removeClass("active");
        $("#testimonial1").removeClass("active");
        $(".project").css("transform","scale(1)");
        $(".team").css("transform","scale(0)");
        $(".gallery").css("transform","scale(0)");
        $(".event").css("transform","scale(0)");
        $(".testimonial").css("transform","scale(0)");
    });
    $("#gallery1").click(function(){
        $(this).addClass("active");
        $("#project1").removeClass("active");
        $("#team1").removeClass("active");
        $("#event1").removeClass("active");
        $("#testimonial1").removeClass("active");
        $(".gallery").css("transform","scale(1)");
        $(".project").css("transform","scale(0)");
        $(".team").css("transform","scale(0)");
        $(".event").css("transform","scale(0)");
        $(".testimonial").css("transform","scale(0)");
    });
    $("#event1").click(function(){
        $(this).addClass("active");
        $("#project1").removeClass("active");
        $("#gallery1").removeClass("active");
        $("#team1").removeClass("active");
        $("#testimonial1").removeClass("active");
        $(".event").css("transform","scale(1)");
        $(".project").css("transform","scale(0)");
        $(".gallery").css("transform","scale(0)");
        $(".team").css("transform","scale(0)");
        $(".testimonial").css("transform","scale(0)");
    });
    $("#testimonial1").click(function(){
        $(this).addClass("active");
        $("#project1").removeClass("active");
        $("#gallery1").removeClass("active");
        $("#event1").removeClass("active");
        $("#team1").removeClass("active");
        $(".testimonial").css("transform","scale(1)");
        $(".project").css("transform","scale(0)");
        $(".gallery").css("transform","scale(0)");
        $(".event").css("transform","scale(0)");
        $(".team").css("transform","scale(0)");
    });
    $("#insert").click(function(){
        $(this).css({"transition": "1s","opacity": "0","transform": "scaleY(0)"})
        $(".dlt").hide();
        $("#cont1").css({"opacity": "1", "transform": "scale(1)"});
        
    });
    
    
    
    
});