%dw 2.4
var nowTime = now()
var dateTimeNow = (nowTime >> "GMT" as TimeZone) as String {"format":"YYYY-MM-dd'T'HH:mm:ss.SSS'Z'"}

fun getCurrentDateTime(zone) = (dateTimeNow >> zone) as String {"format":"YYYY-MM-dd'T'HH:mm:ss"}

fun getCurrentDate() = now() as String {"format":"YYYY-MM-dd"}

fun modifyCurrentDate(op,units,dur) = 
if (op == "sub") 
(now() as DateTime - ("P$(dur)D" as Period)) as String {"format":"YYYY-MM-dd"}
else
(now() as DateTime + ("P$(dur)D" as Period)) as String {"format":"YYYY-MM-dd"}