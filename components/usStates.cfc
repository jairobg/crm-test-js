<cfcomponent>
	<cffunction name="getUsStates" access="public" returntype="Query">
		<cfquery name="getUsStatesQuery" datasource="#APPLICATION.db#">
			SELECT *
			FROM usStates
		</cfquery>
		<cfreturn getUsStatesQuery />
	</cffunction>
</cfcomponent>