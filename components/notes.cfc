<cfcomponent>
	
	<cffunction 
		access="public"
		description="Get all notes for given clientId, table notes" 
		name="noteGetAll" 
		returntype="Query">
		
		<cfargument name="clientId" required="true" />

		<cfquery datasource="#APPLICATION.db#" name="noteGetAllQuery">
			SELECT * FROM notes
			WHERE
				clientId = <cfqueryparam cfsqltype="cf_sql_varchar" value="#ARGUMENTS.clientId#" />
		</cfquery>

		<cfreturn noteGetAllQuery />

	</cffunction>

	<!--------------------------------------------------------------------------------------------------->

	<cffunction
		access="remote"
		description="Save new note for given clientId, table notes" 
		name="noteAdd">

		<cfargument name="clientId" required="true" />
		<cfargument name="noteTitle" required="true" />

		<cfquery name="noteAddQuery" datasource="#APPLICATION.db#">
			INSERT INTO notes
			(
				clientId,
				noteTitle,
				noteDescription
			)
			VALUES
			(
				<cfqueryparam cfsqltype="cf_sql_integer" value="#FORM.clientId#" />,
				<cfqueryparam cfsqltype="cf_sql_varchar" value="#FORM.noteTitle#" />,
				<cfqueryparam cfsqltype="cf_sql_varchar" value="#FORM.noteDescription#" />
			)
		</cfquery>

	</cffunction>

	<!--------------------------------------------------------------------------------------------------->

	<cffunction
		access="remote"
		description="Delete note for given noteId, table notes" 
		name="noteDelete">

		<cfargument name="noteId" required="true">

		<cfquery datasource="#APPLICATION.db#" name="noteDeleteQuery">
			DELETE FROM notes
			WHERE
				noteId = <cfqueryparam cfsqltype="cf_sql_integer" value="#ARGUMENTS.noteId#" />
		</cfquery>

	</cffunction>

	<!--------------------------------------------------------------------------------------------------->

	<cffunction
		access="public"
		description="Get all note info for given noteId, table notes" 
		name="noteGet"
		returntype="query">

		<cfargument name="noteId" required="true">

		<cfquery datasource="#APPLICATION.db#" name="noteGetQuery">
			SELECT *
			FROM notes
			WHERE
				noteId = <cfqueryparam cfsqltype="cf_sql_integer" value="#ARGUMENTS.noteId#" />
		</cfquery>

		<cfreturn noteGetQuery />

	</cffunction>

	<!--------------------------------------------------------------------------------------------------->

	<cffunction
		access="remote"
		description="Edit note info for given clientId, table notes" 
		name="noteEdit">

		<cfargument name="noteId" required="true">

		<cfquery datasource="#APPLICATION.db#" name="noteEditQuery">
			UPDATE notes
			SET
				noteTitle = <cfqueryparam cfsqltype="cf_sql_varchar" value="#ARGUMENTS.noteTitle#" />,
				noteDescription = <cfqueryparam cfsqltype="cf_sql_varchar" value="#ARGUMENTS.noteDescription#" />
			WHERE
				noteId = <cfqueryparam cfsqltype="cf_sql_integer" value="#ARGUMENTS.noteId#" />
		</cfquery>

	</cffunction>

</cfcomponent>