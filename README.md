# dataweave-modules contains date time functions using dataweave module.

##standards followed
DateTime format "YYYY-MM-dd'T'HH:mm:ss"
Date format "YYYY-MM-dd"
TimeZone format Standard Java or Ids

##data
nowTime gets local DateTime 
dateTimeNow gets GMT DateTime 

##Functions
getCurrentDateTime(zone) gets DateTime for the TimeZone
getCurrentDate() gets Date in Local TimeZone
modifyCurrentDate(op,units,dur) gets Date in Local TimeZone with operation (op) to add ("add") or subtract ("sub") in units (units) mentioned with "Y" for year, "M" for months, "D" for day for duration (dur)