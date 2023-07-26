# Dataweave Modules 
# Contains date time functions & others using dataweave module.

## Standards Followed
1. DateTime format "YYYY-MM-dd'T'HH:mm:ss"  
2. Date format "YYYY-MM-dd"  
3. TimeZone format Standard Java or Ids  

## Data
1. nowTime gets local DateTime  

2. dateTimeNow gets GMT DateTime   

## Functions
1. getCurrentDateTime(zone) gets DateTime for the TimeZone  
 
2. getCurrentDate() gets Date in Local TimeZone  

3. modifyCurrentDate(op,units,dur) gets Date in Local TimeZone with operation (op) to add ("add") or subtract ("sub") in units (units) mentioned with "Y" for year, "M" for months, "D" for day for duration (dur)  
