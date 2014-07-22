<!--#include virtual="/cgi-bin/adoconnect.inc" -->
<!--#include virtual="/cgi-bin/adovbs.inc" -->
<!--#include virtual="/cgi-bin/iasutil.asp" -->
<% addy = request.form("addy")
    
    sql="insert into appuser.va_emaillist(addy) select '" & addy & "' " &_
    " where (select count(*) from appuser.va_emaillist where addy='" & addy & "') = 0 " 
    set rs=ctlconn.execute(sql)
    set rs=nothing
    response.Write(sql)
    %>

