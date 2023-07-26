/**
* This mapping won't be shared through your library, but you can use it to try out your module and create integration tests.
*/
%dw 2.4
import * from getCurrentDate

output application/json
---
{
    getCurrentDateTimeWithZone : {time: getCurrentDateTime("Europe/Budapest"), zone: "Europe/Budapest"},
    getCurrentDate : getCurrentDate(),
    modifyCurrentDateAdd : modifyCurrentDate("add","Y",1),
    modifyCurrentDateSub : modifyCurrentDate("sub","Y",1),
    nowLocal: nowTime,
    timeZoneNow : (now().timezone),
    nowGMT: dateTimeNow
}