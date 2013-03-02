<cfcomponent>
	<cffunction name="usStatesGet" access="public" returntype="Query">
		<cfquery name="usStatesGetQuery" datasource="#APPLICATION.db#">
			SELECT *
			FROM usStates
		</cfquery>
		<cfreturn usStatesGetQuery />
	</cffunction>
</cfcomponent>