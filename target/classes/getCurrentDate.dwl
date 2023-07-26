%dw 2.4
var nowTime = now() as String {"format":"YYYY-MM-dd'T'HH:mm:ss"}
var dateTimeNow = (now() >> "GMT" as TimeZone) as String {"format":"YYYY-MM-dd'T'HH:mm:ss"}

fun getCurrentDateTime(zone) = (dateTimeNow >> zone) as String {"format":"YYYY-MM-dd'T'HH:mm:ss"}

fun getCurrentDate() = now() as String {"format":"YYYY-MM-dd"}

fun modifyCurrentDate(op,units,dur) = 
if (op == "sub") 
(now() as DateTime - ("P$(dur)$(units)" as Period)) as String {"format":"YYYY-MM-dd"}
else
(now() as DateTime + ("P$(dur)$(units)" as Period)) as String {"format":"YYYY-MM-dd"}