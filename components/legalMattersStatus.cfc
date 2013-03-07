<cfcomponent>

	<cffunction 
		access="public"
		description="Get all Legal Matters Status, table legalMatterStatus" 
		name="legalMatterStatusGetAll" 
		returntype="Query">

		<cfquery datasource="#APPLICATION.db#" name="legalMatterStatusGetAllQuery">
			SELECT *
			FROM legalMattersStatus
		</cfquery>
		
		<cfreturn legalMatterStatusGetAllQuery />

	</cffunction>


</cfcomponent>