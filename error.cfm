<cflog file="apperrorlog" text="#error.message# - #error.diagnostics#">

<cfsavecontent variable="errortext">
<cfoutput>
An error occurred: http://#cgi.server_name##cgi.script_name#?#cgi.query_string#<br />
Time: #dateFormat(now(), "short")# #timeFormat(now(), "short")#<br />

<h2>Error:</h2>
<cfdump var="#error#" label="Error">
<h2>Form:</h2>
<cfdump var="#form#" label="Form">
<h2>URL:</h2>
<cfdump var="#url#" label="URL">
<h2>SESSION:</h2>
<cfdump var="#SESSION#" label="SESSION">

</cfoutput>
</cfsavecontent>

<!---
<cfmail to="jairo.botero@nyxent.com, andy.montoya@nyxent.com" from="credit-defender@credit-defender.com" subject="Error on #cgi.server_name#: #error.message#" type="html">
    #errortext#
</cfmail>
--->

<cfoutput>
#errortext#
</cfoutput>