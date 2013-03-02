<cfcomponent>

	<!--------------------------------------------------------------------------------------------------->

	<cffunction
		access="public"
		description="Get a query of all clients, table clients" 
		name="clientGetAll"
		returntype="query">
		
		<cfquery datasource="#APPLICATION.db#" name="clientGetAllQuery">
			SELECT * FROM clients
		</cfquery>

		<cfreturn clientGetAllQuery />

	</cffunction>

	<!--------------------------------------------------------------------------------------------------->

	<cffunction 
		access="public"
		description="Get all client and secundary client personal information for given clientId, table clients" 
		name="clientGet" 
		returntype="query">
		
		<cfargument name="clientId" required="true">

		<cfquery datasource="#APPLICATION.db#" name="getClientQuery">
			SELECT *
			FROM clients
			WHERE
				clientId = <cfqueryparam cfsqltype="cf_sql_varchar" value="#ARGUMENTS.clientId#" />
		</cfquery>

		<cfreturn getClientQuery />

	</cffunction>

	<!--------------------------------------------------------------------------------------------------->

	<cffunction 
		access="remote"
		description="Update client and secundary client personal information, table clients"
		name="clientEdit" 
		returntype="Any">

		<cfargument name="clientId" required="true">

		<cfquery datasource="#APPLICATION.db#" name="editClientQuery">
			UPDATE 
				clients
			SET
				clientFirstName = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#FORM.clientFirstName#" />,
				clientMiddleName = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#FORM.clientMiddleName#" />,
				clientLastName = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#FORM.clientLastName#" />,
				clientHomePhone = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#FORM.clientHomePhone#" />,
				clientBusinessPhone = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#FORM.clientBusinessPhone#" />,
				clientCellPhone = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#FORM.clientCellPhone#" />,
				clientEmail = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#FORM.clientEmail#" />,
				<cfif FORM.clientDateBirth EQ "">
					clientDateBirth = NULL,
				<cfelse>
					clientDateBirth = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#FORM.clientDateBirth#" />,
				</cfif>
				clientSocialSecurity = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#FORM.clientSocialSecurity#" />,
				clientAddress = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#FORM.clientAddress#" />,
				clientCity = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#FORM.clientCity#" />,
				clientUsState = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#FORM.clientUsState#" />,
				clientZip = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#FORM.clientZip#" />,
				scClientFirstName = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#FORM.scClientFirstName#" />,
				scClientMiddleName = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#FORM.scClientMiddleName#" />,
				scClientLastName = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#FORM.scClientLastName#" />,
				scClientHomePhone = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#FORM.scClientHomePhone#" />,
				scClientBusinessPhone = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#FORM.scClientBusinessPhone#" />,
				scClientCellPhone = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#FORM.scClientCellPhone#" />,
				scClientEmail = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#FORM.scClientEmail#" />,
				<cfif FORM.scClientDateBirth EQ "">
					scClientDateBirth = NULL,
				<cfelse>
					scClientDateBirth = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#FORM.scClientDateBirth#" />,
				</cfif>
				scClientSocialSecurity = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#FORM.scClientSocialSecurity#" />,
				scClientAddress = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#FORM.scClientAddress#" />,
				scClientCity = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#FORM.scClientCity#" />,
				scClientUsState = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#FORM.scClientUsState#" />,
				scClientZip = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#FORM.scClientZip#" />
			WHERE
				clientId = <cfqueryparam cfsqltype="CF_SQL_INTEGER" value="#FORM.clientId#" />
		</cfquery>

	</cffunction>

</cfcomponent>