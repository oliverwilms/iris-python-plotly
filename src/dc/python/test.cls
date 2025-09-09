Class dc.python.test
{

ClassMethod HelloWorld() As %Status
{
  Set sc = $$$OK
  Set b = ##class(%SYS.Python).Import("builtins")
  Do b.print("Hello world")
  Return sc
}

ClassMethod Today() As %Status
{
  Set sc = $$$OK
  Set dt = ##class(%SYS.Python).Import("datetime")
  write dt.date.today().isoformat()
  Return sc
}

ClassMethod Hello() As %Status
{
  Set sc = $$$OK
  Set sm = ##class(%SYS.Python).Import("sample")
  write sm.hello()
  Return sc
}

/// Titanic
ClassMethod TitanicMeanAge() As %Status
{
    Set sc = $$$OK
    set tt=##class(%SYS.Python).Import("sample")
    set path=##class(%File).NormalizeDirectory("lib", ##class(%File).GetDirectory($zu(86)))_"data/iris-python-template/titanic.csv"
    write "mean age="_tt.meanage(path)
    Return sc
}

ClassMethod PlotlyDiv(pTrnYear = 0, pTrnMonth = 0) As %String
{
	Set importlib = ##class(%SYS.Python).Import("importlib")
	Set plotdiv = ##class(%SYS.Python).Import("plotdiv")
	Do importlib.reload(plotdiv)
	Set div = plotdiv.gendiv(pTrnYear,pTrnMonth)
	Return div
}

}
