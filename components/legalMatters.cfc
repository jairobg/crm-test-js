<cfcomponent>
	
	<cffunction 
		access="remote"
		description="Update legal matter, table legalMatters"
		name="legalMatterEdit" 
		returntype="Any">

		<cfargument name="legalMatterId" required="true">

		<cfquery datasource="#APPLICATION.db#" name="legalMatterEditQuery">
			UPDATE 
				legalMatters
			SET
				creditorId = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#ARGUMENTS.creditorId#" />,
				userId = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#ARGUMENTS.userId#" />,
				legalMatterPlantiff = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#ARGUMENTS.legalMatterPlantiff#" />,
				legalMatterDefender = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#ARGUMENTS.legalMatterDefender#" />,
				legalMatterStatusId = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#ARGUMENTS.legalMatterStatusId#" />,
				legalMatterRef = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#ARGUMENTS.legalMatterRef#" />,
				<cfif ARGUMENTS.legalMatterOpenDate EQ "">
					legalMatterOpenDate = NULL,
				<cfelse>
					legalMatterOpenDate = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#ARGUMENTS.legalMatterOpenDate#" />,
				</cfif>
				<cfif ARGUMENTS.legalMatterCloseDate EQ "">
					legalMatterCloseDate = NULL,
				<cfelse>
					legalMatterCloseDate = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#ARGUMENTS.legalMatterCloseDate#" />,
				</cfif>
				legalMatterDescription = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#ARGUMENTS.legalMatterDescription#" />,
				legalMatterOCName = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#ARGUMENTS.legalMatterOCName#" />,
				legalMatterOCLawFirm = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#ARGUMENTS.legalMatterOCLawFirm#" />,
				legalMatterOCJurisdiction = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#ARGUMENTS.legalMatterOCJurisdiction#" />,
				legalMatterOCEmail = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#ARGUMENTS.legalMatterOCEmail#" />,
				legalMatterOCPhone = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#ARGUMENTS.legalMatterOCPhone#" />,
				legalMatterOCFax = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#ARGUMENTS.legalMatterOCFax#" />,
				legalMatterOCAddress = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#ARGUMENTS.legalMatterOCAddress#" />,
				legalMatterOCCity = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#ARGUMENTS.legalMatterOCCity#" />,
				legalMatterOCUsState = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#ARGUMENTS.legalMatterOCUsState#" />,
				legalMatterOCZip = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#ARGUMENTS.legalMatterOCZip#" />
			WHERE
				legalMatterId = <cfqueryparam cfsqltype="CF_SQL_INTEGER" value="#ARGUMENTS.legalMatterId#" />
		</cfquery>

	</cffunction>


	<!--------------------------------------------------------------------------------------------------->


	<cffunction 
		access="remote"
		description="Add new legal matter, table legalMatters"
		name="legalMatterAdd" 
		returntype="Any">

		<cfargument name="clientId" required="true">

		<cfquery datasource="#APPLICATION.db#" name="legalMatterAddQuery">
			INSERT INTO
				legalMatters
				(
					clientId,
					creditorId,
					userId,
					legalMatterPlantiff,
					legalMatterDefender,
					legalMatterStatusId,
					legalMatterRef,
					legalMatterOpenDate,
					legalMatterCloseDate,
					legalMatterDescription,
					legalMatterOCName,
					legalMatterOCLawFirm,
					legalMatterOCJurisdiction,
					legalMatterOCEmail,
					legalMatterOCPhone,
					legalMatterOCFax,
					legalMatterOCAddress,
					legalMatterOCCity,
					legalMatterOCUsState,
					legalMatterOCZip
				)
			VALUES
				(
					<cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#ARGUMENTS.clientId#" />,
					<cfif ARGUMENTS.creditorId EQ "">
						NULL,
					<cfelse>
						<cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#ARGUMENTS.creditorId#" />,
					</cfif>
					<cfif ARGUMENTS.userId EQ "">
						NULL,
					<cfelse>
						<cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#ARGUMENTS.userId#" />,
					</cfif>
					<cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#ARGUMENTS.legalMatterPlantiff#" />,
					<cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#ARGUMENTS.legalMatterDefender#" />,
					<cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#ARGUMENTS.legalMatterStatusId#" />,
					<cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#ARGUMENTS.legalMatterRef#" />,
					<cfif ARGUMENTS.legalMatterOpenDate EQ "">
						NULL,
					<cfelse>
						<cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#ARGUMENTS.legalMatterOpenDate#" />,
					</cfif>
					<cfif ARGUMENTS.legalMatterCloseDate EQ "">
						NULL,
					<cfelse>
						<cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#ARGUMENTS.legalMatterCloseDate#" />,
					</cfif>
					<cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#ARGUMENTS.legalMatterDescription#" />,
					<cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#ARGUMENTS.legalMatterOCName#" />,
					<cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#ARGUMENTS.legalMatterOCLawFirm#" />,
					<cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#ARGUMENTS.legalMatterOCJurisdiction#" />,
					<cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#ARGUMENTS.legalMatterOCEmail#" />,
					<cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#ARGUMENTS.legalMatterOCPhone#" />,
					<cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#ARGUMENTS.legalMatterOCFax#" />,
					<cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#ARGUMENTS.legalMatterOCAddress#" />,
					<cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#ARGUMENTS.legalMatterOCCity#" />,
					<cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#ARGUMENTS.legalMatterOCUsState#" />,
					<cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#ARGUMENTS.legalMatterOCZip#" />					
				)
		</cfquery>

	</cffunction>

	<!--------------------------------------------------------------------------------------------------->

	<cffunction 
		access="public"
		description="Get all legal matter for given clientId, table legalMatters" 
		name="legalMatterGetAll" 
		returntype="query">
		
		<cfargument name="clientId" required="true">

		<cfquery datasource="#APPLICATION.db#" name="legalMatterGetAllQuery">
			SELECT *
			FROM legalMatters
			WHERE
				clientId = <cfqueryparam cfsqltype="cf_sql_varchar" value="#ARGUMENTS.clientId#" />
		</cfquery>

		<cfreturn legalMatterGetAllQuery />

	</cffunction>

	<!--------------------------------------------------------------------------------------------------->

	<cffunction
		access="remote"
		description="Delete legal matter for given legal matter, table legalMatters" 
		name="legalMatterDelete">

		<cfargument name="legalMatterId" required="true">

		<cfquery datasource="#APPLICATION.db#" name="noteDeleteQuery">
			DELETE FROM legalMatters
			WHERE
				legalMatterId = <cfqueryparam cfsqltype="cf_sql_integer" value="#ARGUMENTS.legalMatterId#" />
		</cfquery>

	</cffunction>

	<!--------------------------------------------------------------------------------------------------->

	<cffunction
		access="public"
		description="Get all legal matter info for given legalMatterId, table legalMatters" 
		name="legalMatterGet"
		returntype="query">

		<cfargument name="legalMatterId" required="true">

		<cfquery datasource="#APPLICATION.db#" name="legalMatterGetQuery">
			SELECT *
			FROM legalMatters
			WHERE
				legalMatterId = <cfqueryparam cfsqltype="cf_sql_integer" value="#ARGUMENTS.legalMatterId#" />
		</cfquery>

		<cfreturn legalMatterGetQuery />

	</cffunction>

</cfcomponent>