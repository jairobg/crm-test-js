<cfcomponent>
	
	<cffunction name="getClient" access="remote" returntype="Any">
		
		<cfargument name="clientId" required="false">


		<cfquery name="getClientQuery" datasource="#APPLICATION.db#">
			SELECT *
			FROM clients
			WHERE
				clientId = #ARGUMENTS.clientId#
		</cfquery>

		<!---
			Delete client structure
		--->
		<cfset StructDelete(SESSION, "client") />
		<cfset SESSION.client = {} />

		<!---
			Set client Id
		--->
		<cfset SESSION.client.clientId = "#getClientQuery.clientId#" />

		<!---
			Create Principal client structure
		--->
		<cfset SESSION.client.client = {} />
		<cfset SESSION.client.client =
		{
			clientFirstName = "#getClientQuery.clientFirstName#",
			clientMiddleName = "#getClientQuery.clientMiddleName#",
			clientLastName = "#getClientQuery.clientLastName#",
			clientHomePhone = "#getClientQuery.clientHomePhone#",
			clientBusinessPhone = "#getClientQuery.clientBusinessPhone#",
			clientCellPhone = "#getClientQuery.clientCellPhone#",
			clientEmail = "#getClientQuery.clientEmail#",
			clientDateBirth = "#getClientQuery.clientDateBirth#",
			clientSocialSecurity = "#getClientQuery.clientSocialSecurity#",
			clientAddress = "#getClientQuery.clientAddress#",
			clientCity = "#getClientQuery.clientCity#",
			clientUsState = "#getClientQuery.clientUsState#",
			clientZip = "#getClientQuery.clientZip#"
		}/>


		<!---
			Create Secundary client structure
		--->
		<cfset SESSION.client.scClient = {} />
		<cfset SESSION.client.scClient =
		{
			scClientFirstName = "#getClientQuery.scClientFirstName#",
			scClientMiddleName = "#getClientQuery.scClientMiddleName#",
			scClientLastName = "#getClientQuery.scClientLastName#",
			scClientHomePhone = "#getClientQuery.scClientHomePhone#",
			scClientBusinessPhone = "#getClientQuery.scClientBusinessPhone#",
			scClientCellPhone = "#getClientQuery.scClientCellPhone#",
			scClientEmail = "#getClientQuery.scClientEmail#",
			scClientDateBirth = "#getClientQuery.scClientDateBirth#",
			scClientSocialSecurity = "#getClientQuery.scClientSocialSecurity#",
			scClientAddress = "#getClientQuery.scClientAddress#",
			scClientCity = "#getClientQuery.scClientCity#",
			scClientUsState = "#getClientQuery.scClientUsState#",
			scClientZip = "#getClientQuery.scClientZip#"
		}/>

	</cffunction>



	<cffunction name="saveClient" access="remote" returntype="Any">
		

		<cfset SESSION.client.client.clientFirstName = FORM.clientFirstName  />
		<cfset SESSION.client.client.clientMiddleName = FORM.clientMiddleName />
		<cfset SESSION.client.client.clientLastName = FORM.clientLastName />
		<cfset SESSION.client.client.clientHomePhone = FORM.clientHomePhone />
		<cfset SESSION.client.client.clientBusinessPhone = FORM.clientBusinessPhone />
		<cfset SESSION.client.client.clientCellPhone = FORM.clientCellPhone />
		<cfset SESSION.client.client.clientEmail = FORM.clientEmail />
		<cfset SESSION.client.client.clientDateBirth = FORM.clientDateBirth />
		<cfset SESSION.client.client.clientSocialSecurity = FORM.clientSocialSecurity />
		<cfset SESSION.client.client.clientAddress = FORM.clientAddress />
		<cfset SESSION.client.client.clientCity = FORM.clientCity />
		<cfset SESSION.client.client.clientUsState = FORM.clientUsState />
		<cfset SESSION.client.client.clientZip = FORM.clientZip />
		<cfset SESSION.client.client.scClientFirstName = FORM.scClientFirstName />
		<cfset SESSION.client.client.scClientMiddleName = FORM.scClientMiddleName />
		<cfset SESSION.client.client.scClientLastName = FORM.scClientLastName />
		<cfset SESSION.client.client.scClientHomePhone = FORM.scClientHomePhone />
		<cfset SESSION.client.client.scClientBusinessPhone = FORM.scClientBusinessPhone />
		<cfset SESSION.client.client.scClientCellPhone = FORM.scClientCellPhone />
		<cfset SESSION.client.client.scClientEmail = FORM.scClientEmail />
		<cfset SESSION.client.client.scClientDateBirth = FORM.scClientDateBirth />
		<cfset SESSION.client.client.scClientSocialSecurity = FORM.scClientSocialSecurity />
		<cfset SESSION.client.client.scClientAddress = FORM.scClientAddress />
		<cfset SESSION.client.client.scClientCity = FORM.scClientCity />
		<cfset SESSION.client.client.scClientUsState = FORM.scClientUsState />
		<cfset SESSION.client.client.scClient.Zip = FORM.scClientZip />



		<cfquery name="saveClientQuery" datasource="#APPLICATION.db#">
			UPDATE 
				clients
			SET
				clientFirstName = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#SESSION.client.client.clientFirstName#" />,
				clientMiddleName = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#SESSION.client.client.clientMiddleName#" />,
				clientLastName = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#SESSION.client.client.clientLastName#" />,
				clientHomePhone = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#SESSION.client.client.clientHomePhone#" />,
				clientBusinessPhone = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#SESSION.client.client.clientBusinessPhone#" />,
				clientCellPhone = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#SESSION.client.client.clientCellPhone#" />,
				clientEmail = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#SESSION.client.client.clientEmail#" />,
				<cfif SESSION.client.client.clientDateBirth EQ "">
					clientDateBirth = NULL,
				<cfelse>
					clientDateBirth = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#SESSION.client.client.clientDateBirth#" />,
				</cfif>
				clientSocialSecurity = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#SESSION.client.client.clientSocialSecurity#" />,
				clientAddress = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#SESSION.client.client.clientAddress#" />,
				clientCity = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#SESSION.client.client.clientCity#" />,
				clientUsState = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#SESSION.client.client.clientUsState#" />,
				clientZip = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#SESSION.client.client.clientZip#" />,
				scClientFirstName = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#SESSION.client.client.scClientFirstName#" />,
				scClientMiddleName = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#SESSION.client.client.scClientMiddleName#" />,
				scClientLastName = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#SESSION.client.client.scClientLastName#" />,
				scClientHomePhone = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#SESSION.client.client.scClientHomePhone#" />,
				scClientBusinessPhone = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#SESSION.client.client.scClientBusinessPhone#" />,
				scClientCellPhone = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#SESSION.client.client.scClientCellPhone#" />,
				scClientEmail = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#SESSION.client.client.scClientEmail#" />,
				<cfif SESSION.client.client.scClientDateBirth EQ "">
					scClientDateBirth = NULL,
				<cfelse>
					scClientDateBirth = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#SESSION.client.client.scClientDateBirth#" />,
				</cfif>
				scClientSocialSecurity = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#SESSION.client.client.scClientSocialSecurity#" />,
				scClientAddress = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#SESSION.client.client.scClientAddress#" />,
				scClientCity = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#SESSION.client.client.scClientCity#" />,
				scClientUsState = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#SESSION.client.client.scClientUsState#" />,
				scClientZip = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#SESSION.client.client.scClient.Zip#" />
			WHERE
				clientId = <cfqueryparam cfsqltype="CF_SQL_INTEGER" value="#SESSION.client.clientId#" />
		</cfquery>

	</cffunction>

</cfcomponent>