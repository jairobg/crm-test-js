<cfapplication 
	name="DEV - CRMLex" 
	sessionManagement="yes" 
	sessionTimeout="#createTimeSpan(0,8,0,0)#" />

<cfset APPLICATION.db = "crmlex">

<cfset APPLICATION.website_url = "http://local.crmlex.com">
<cfset APPLICATION.template_path = "#application.website_url#/template/">
<cfset APPLICATION.localPath = "/Users/jairobotero/Sites/crmlex">
<cfset APPLICATION.codeAlgorithm = "CFMX_COMPAT">
<cfset APPLICATION.codeEncoding = "UU">
<cfset APPLICATION.codeKey = "CRMLEX">

<cferror type="exception" template="error.cfm" />
<cferror type="request" template="error.cfm" />