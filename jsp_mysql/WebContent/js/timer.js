var total_seconds=10;
var c_minutes=parseInt(total_seconds/60);
var c_seconds=parseInt(total_seconds%60);
function CheckTime()
{
  document.getElementById("time").innerHTML='Time left '+c_minutes+' minutes '+c_seconds+' seconds';
  if(total_seconds<=0)
   {
   	window.alert("BAD LUCK ...Your Time has been Expired!!!");
    setTimeout('document.verify.submit()',1);
    
  }
  else
  {
    total_seconds=total_seconds-1;
    c_minutes=parseInt(total_seconds/60);
    c_seconds=parseInt(total_seconds%60);
    setTimeout("CheckTime()",1000);

  }
}  
setTimeout("CheckTime()",1000);

