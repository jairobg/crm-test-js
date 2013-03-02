<cfinvoke component="components.clients" method="clientGetAll" returnvariable="clientsList" />

<div class="widget">
	<div class="title">
		<img src="images/icons/dark/full2.png" alt="" class="titleIcon" />
		<h6>Clients</h6>
	</div>

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
			<cfoutput query="clientsList">
			<tr class="gradeA">
				<td>#clientId#</td>
				<td>#clientFirstName#</td>
				<td>#clientLastName#</td>
				<td class="center">#dateFormat(clientCreationDate, "dd-mmm-yyyy")#</td>
				<td class="actBtns">
					<a href="javaScript:clientSelect(#clientId#);" title="Update" class="tipS"><img src="images/icons/edit.png" alt="" /></a>
					<a href="" title="Remove" class="tipS"><img src="images/icons/remove.png" alt="" /></a>
				</td>
			</tr>
			</cfoutput>
		</tbody>

	</table>  

</div>