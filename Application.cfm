<cfapplication 
	name="DEV - CRMLex" 
	sessionManagement="yes" 
	sessionTimeout="#createTimeSpan(0,8,0,0)#" />

<cfset APPLICATION.db = "crmlex">

<cfset APPLICATION.website_url = "http://crmlex.credit-defender.com">
<cfset APPLICATION.template_path = "#application.website_url#/template/">
<cfset APPLICATION.localPath = "D:\home\credit-defender.com\wwwroot\crmlex">
<cfset APPLICATION.codeAlgorithm = "CFMX_COMPAT">
<cfset APPLICATION.codeEncoding = "UU">
<cfset APPLICATION.codeKey = "CRMLEX">

<cferror type="exception" template="error.cfm" />
<cferror type="request" template="error.cfm" />