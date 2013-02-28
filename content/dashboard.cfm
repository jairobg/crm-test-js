<cfquery name="clients" datasource="#APPLICATION.db#">
	SELECT * FROM clients
</cfquery>

<!---
<cfloop from="2" to="30" index="i">
	<cfquery name="insertClients" datasource="#APPLICATION.db#">
		INSERT into clients (clientFirstName, clientLastName) VALUES ('john#i#','doe#i#')
	</cfquery>	
</cfloop>
--->

<div class="widget">
	<div class="title"><img src="images/icons/dark/full2.png" alt="" class="titleIcon" /><h6>Clients</h6></div>

		<table cellpadding="0" cellspacing="0" border="0" class="display dTable">

			<thead>
				<tr>
					<th>Id</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Creation Date</th>
					<th>Acts</th>
				</tr>
			</thead>

			<tbody>
				<cfoutput query="clients">
				<tr class="gradeA">
					<td>#clientId#</td>
					<td>#clientFirstName#</td>
					<td>#clientLastName#</td>
					<td class="center">#dateFormat(clientCreationDate, "dd-mmm-yyyy")#</td>
					<td class="actBtns">
						<a href="javascript:getClient(#clientId#);fPrincipalContent('client');" title="Update" class="tipS"><img src="images/icons/edit.png" alt="" /></a>
						<a href="" title="Remove" class="tipS"><img src="images/icons/remove.png" alt="" /></a>
					</td>
				</tr>
				</cfoutput>
			</tbody>

		</table>  

</div>