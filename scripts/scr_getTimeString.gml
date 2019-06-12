/*
scr_getTimeString(seconds) takes time as secons as input
and outputs a TimeString in the formant mm:ss
*/
//Input time in seconds
var TotalSec = argument0;

//Calculate minutes
var minutes = max(0,floor(TotalSec/60));

//Calculate secons
var seconds = max(0,floor(TotalSec-(minutes*60)));


//Generate Minutes String
if (minutes >= 10)
    var minutesStr = string(minutes);
else
    var minutesStr = "0" + string(minutes);
    
//Generate Seconds String
if (seconds >= 10)
    var secondsStr = string(seconds);
else
    var secondsStr = "0" + string(seconds);
    
//return TimeString as mm:ss
return minutesStr + ":" + secondsStr;
