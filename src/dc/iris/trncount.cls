Class dc.iris.trncount Extends %Persistent [ StorageStrategy = NewStorage1 ]
{

Index NewIndex1 On (TrnYear, TrnMonth, Category) [ IdKey, PrimaryKey, Unique ];

Property Category As %String;

Property Credit As %Numeric;

Property Debit As %Numeric;

Property TrnCount As %Integer;

Property TrnMonth As %String;

Property TrnYear As %String;

Storage NewStorage1
{
<ExtentSize>1977</ExtentSize>
<Property name="%%ID">
<AverageFieldSize>18.59</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb("0||0||0","2021||12||Mahal","2021||4||Mortgage","2021||8||Gifts Received","2022||12||Contest","2022||4||0","2022||7||Transfer","2023||11||Utilities","2023||3||Restaurants","2023||7||Gas","2024||11||Groceries","2024||3||Cellular","2024||6||Restaurant","2025||1||Life Insurance","2025||5||Insurance","2026||4||0"),$lb(0,6,6,3,6,6,3,6,6,3,6,6,3,6,3),$lb(813464624,813464624,842019377,825392252,880573517,880573517,947682375,830241848,847019057,825392252,880573488,880573488,930905172,847019063,863796273,825326716,863796306,863796306,930905159,863796279,880573489,825326716,863796291,863796291,914127954,880573494,897350705,830241868,897350729,897350709,914127924,842019382))</Histogram>
<Selectivity>1</Selectivity>
</Property>
<Property name="Category">
<AverageFieldSize>9.38</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb("0","Automobile","Cellular","Dividends","Freelance","Gifts Received","Housing","Interest","Leisure","Mahal","PHP","Payment","Restaurant","Sarah","Theodore","Utilities"),$lb(0,0,0,0,0,0,0,0,0,0,1,0,0,0,0),$lb(805306368,805306368,1098216559,1098216559,1130720364,1130720364,1147762281,1147762281,1181902181,1181902181,1198089844,1198089844,1215264115,1215264115,1231975525,1231975525,1281714547,1281714547,1298229345,1298229345,1346916352,1213202432,1635347813,1348565357,1382380404,1382380404,1398895201,1398895201,1416127855,1416127855,1433692524,1433692524))</Histogram>
<Selectivity>0.8130%</Selectivity>
</Property>
<Property name="Credit">
<AverageFieldSize>4.65</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" .01"," 0"," 0"," 0"," 0"," 0"," 0"," 0"," 0"," 0"," 116.91"," 18.01"," 265.46"," 418.72"," 6072.47"," 8555.39"),$lb(1,3,3,3,3,3,3,3,3,1,2,1,1,1,1),$lb(539897905,774910208,805306368,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,805306368,825308718,825634361,942551089,825765424,842413358,842413358,875640878,875640878,909129522,909129522,943011125,540554549))</Histogram>
<OutlierSelectivity>.590794:0</OutlierSelectivity>
<Selectivity>0.0656%</Selectivity>
</Property>
<Property name="Debit">
<AverageFieldSize>6.48</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" .01"," 0"," 0"," 0"," 1154.48"," 14.95"," 1627.7"," 1859.09"," 219.25"," 2500"," 30.83"," 376.95"," 471"," 6.4"," 7163.41"," 86.86"),$lb(1,3,3,1,2,2,2,1,2,1,2,1,1,1,1),$lb(539897905,774910208,805306368,0,0,0,0,805306368,825308468,825570350,875444533,875444533,909260590,909260590,943012142,825767225,842086702,825830962,892350464,842346544,858795576,808335411,926297657,859256366,876032256,876032256,908997632,908997632,925972019,925972019,943074872,540554798))</Histogram>
<OutlierSelectivity>.198786:0</OutlierSelectivity>
<Selectivity>0.0715%</Selectivity>
</Property>
<Property name="TrnCount">
<AverageFieldSize>3.17</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,1,0,$lb("1","1","1","1","1","1","1","2","2","3","4","5","7","9","15","24"),$lb(1,1,1,1,1,1,0,1,0,0,0,0,0,0,0),$lb(822083584,0,0,0,0,0,0,0,0,0,0,0,0,822083584,838860800,0,0,838860800,855638016,855638016,872415232,872415232,889192448,889192448,922746880,922746880,956301312,956301312,825556992,825556992,842268672,842268672))</Histogram>
<OutlierSelectivity>.382903:1</OutlierSelectivity>
<Selectivity>1.4025%</Selectivity>
</Property>
<Property name="TrnMonth">
<AverageFieldSize>3.23</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb("0","1","2","3","3","4","5","5","6","7","8","9","9","10","11","12"),$lb(0,0,0,1,0,0,1,0,0,0,0,1,0,1,1),$lb(805306368,805306368,822083584,822083584,838860800,838860800,855638016,0,0,855638016,872415232,872415232,889192448,0,0,889192448,905969664,905969664,922746880,922746880,939524096,939524096,956301312,0,0,956301312,825229312,805306368,822083584,822083584,838860800,825360384))</Histogram>
<Selectivity>7.6923%</Selectivity>
</Property>
<Property name="TrnYear">
<AverageFieldSize>5.98</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb("0","2021","2021","2021","2022","2022","2022","2023","2023","2023","2024","2024","2024","2024","2025","2025"),$lb(0,4,4,3,4,4,3,4,4,3,4,4,4,3,4),$lb(805306368,805306368,842019377,0,0,0,0,822083584,838860800,0,0,0,0,838860800,855638016,0,0,0,0,855638016,872415232,0,0,0,0,0,0,872415232,889192448,0,0,842019381))</Histogram>
<Selectivity>12.5000%</Selectivity>
</Property>
<SQLMap name="Map1">
<BlockCount>-24</BlockCount>
<Data name="Credit">
<Delimiter>"^"</Delimiter>
<Piece>2</Piece>
</Data>
<Data name="Debit">
<Delimiter>"^"</Delimiter>
<Piece>3</Piece>
</Data>
<Data name="TrnCount">
<Delimiter>"^"</Delimiter>
<Piece>1</Piece>
</Data>
<Global>^COUNT</Global>
<Subscript name="1">
<Expression>{TrnYear}</Expression>
</Subscript>
<Subscript name="2">
<Expression>{TrnMonth}</Expression>
</Subscript>
<Subscript name="3">
<Expression>{Category}</Expression>
</Subscript>
<Type>data</Type>
</SQLMap>
<StreamLocation>^dc.iris.trncountS</StreamLocation>
<Type>%Storage.SQL</Type>
}

}
