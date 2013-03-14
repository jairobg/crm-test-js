<cfinvoke component="components.properties" method="propertiesGetAllPerClient" returnvariable="propertiesGetAllPerClientQuery">
	<cfinvokeargument name="clientId" value="#URL.clientId#" />
</cfinvoke>

<div class="title">
	<img src="images/icons/dark/full2.png" alt="" class="titleIcon" />
	<h6>Properties</h6>
</div>

<table cellpadding="0" cellspacing="0" border="0" class="display dTable">

	<thead>
		<tr>
			<th>City</th>
			<th>State</th>
			<th>Monthly Retainer</th>
			<th>Actions</th>
		</tr>
	</thead>

	<tbody>
		<cfoutput query="propertiesGetAllPerClientQuery">
		<tr class="gradeA">
			<td>#propertyCity#</td>
			<td>#propertyCity#</td>
			<td class="right">#dollarFormat(propertyMonthlyRetainer)#</td>
			<td class="actBtns">
				<a href="javaScript:legalMatterToEdit('#propertyId#');" title="Update" class="tipS">
					<img src="images/icons/edit.png" alt="" />
				</a>
				<a href="javaScript:legalMatterDelete('#propertyId#','#clientId#');" title="Remove" class="tipS">
					<img src="images/icons/remove.png" alt="" />
				</a>
			</td>
		</tr>
		</cfoutput>
	</tbody>
</table>