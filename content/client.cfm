<cfinvoke component="components.usStates" method="usStatesGet" returnvariable="usStates" />
<cfinvoke component="components.clients" method="clientGet" returnvariable="thisClient">
    <cfinvokeargument name="clientId" value="#URL.clientId#" />
</cfinvoke>

<cfoutput>
<form class="form" action="" id="clientEditForm">

    <input name="clientId" type="hidden" value="#thisClient.clientId#">
	
    <fieldset>
		<div class="widget">

			<div class="title">
				<img src="images/icons/dark/list.png" alt="" class="titleIcon" />
                <h6>Client Information</h6>
			</div>

			<div class="formRow fluid">
            	<label>Primary Contact:</label>
                <div class="formRight mt12">
                    <span class="span5">
                        <input 
                            name="clientFirstName" 
                            placeholder="First Name" 
                            type="text" 
                            value="#thisClient.clientFirstName#" />
                    </span>
                    <span class="span2">
                        <input 
                            name="clientMiddleName" 
                            placeholder="Middle Name" 
                            type="text" 
                            value="#thisClient.clientMiddleName#" />
                    </span>
                    <span class="span5">
                        <input 
                            name="clientLastName" 
                            placeholder="Last Name" 
                            type="text" 
                            value="#thisClient.clientLastName#" />
                    </span>
                </div>
                <div class="formRight mt12">
                    <span class="span4">
                        <input 
                            class="maskPhone"
                            name="clientHomePhone" 
                            placeholder="Home phone" 
                            type="text" 
                            value="#thisClient.clientHomePhone#" />
                        <span class="formNote">(999) 999-9999</span>
                    </span>
                    <span class="span4">
                        <input 
                            class="maskPhone"
                            name="clientBusinessPhone" 
                            placeholder="Business phone" 
                            type="text" 
                            value="#thisClient.clientBusinessPhone#" />
                        <span class="formNote">(999) 999-9999</span>
                    </span>
                    <span class="span4">
                        <input 
                            class="maskPhone"
                            name="clientCellPhone" 
                            placeholder="Cell phone" 
                            type="text" 
                            value="#thisClient.clientCellPhone#" />
                        <span class="formNote">(999) 999-9999</span>
                    </span>
                </div>
                <div class="formRight mt12">
                    <span class="span4">
                        <input
                            class="validate[required,custom[email]]"
                            id="clientEmail"
                            name="clientEmail" 
                            placeholder="E-mail" 
                            type="text" 
                            value="#thisClient.clientEmail#" />
                    </span>
                    <span class="span4">
                        <input 
                            class="datepicker" 
                            name="clientDateBirth" 
                            placeholder="Date birth" 
                            type="text" 
                            value="#thisClient.clientDateBirth#" />
                    </span>
                    <span class="span4">
                        <input 
                            name="clientSocialSecurity" 
                            placeholder="Social Security" 
                            type="text" 
                            value="#thisClient.clientSocialSecurity#" />
                    </span>
                </div>
                <div class="formRight mt12">
                    <span class="span4">
                        <input 
                            type="text" 
                            placeholder="Address" 
                            name="clientAddress" 
                            value="#thisClient.clientAddress#" />
                    </span>
                    <span class="span2">
                        <input 
                            name="clientCity" 
                            placeholder="City" 
                            type="text" 
                            value="#thisClient.clientCity#" />
                    </span>
                    <span class="span4">
						<select name="clientUsState"> 
							<option value="" selected="selected">Select a State</option> 
							<cfloop query="usStates">
								<option 
                                    <cfif thisClient.clientUsState EQ usStates.abbreviation>
                                        selected="selected"
                                     </cfif>
                                    value="#usStates.abbreviation#">
                                    #usStates.name#
                                </option>
							</cfloop>
						</select>         
                    </span>
                    <span class="span2">
                        <input 
                            name="clientZip" 
                            placeholder="Zip" 
                            type="text" 
                            value="#thisClient.clientZip#" />
                    </span>
                </div>
            </div>


			<div class="formRow fluid">
            	<label>Secondary Contact:</label>
                <div class="formRight mt12">
                    <span class="span5">
                        <input 
                            name="scClientFirstName" 
                            placeholder="First Name" 
                            type="text" 
                            value="#thisClient.scClientFirstName#" />
                    </span>
                    <span class="span2">
                        <input 
                            name="scClientMiddleName" 
                            placeholder="Middle Name" 
                            type="text" 
                            value="#thisClient.scClientMiddleName#" />
                    </span>
                    <span class="span5">
                        <input 
                            name="scClientLastName" 
                            placeholder="Last Name" 
                            type="text" 
                            value="#thisClient.scClientLastName#" />
                    </span>
                </div>
                <div class="formRight mt12">
                    <span class="span4">
                        <input 
                            name="scClientHomePhone" 
                            placeholder="Home phone" 
                            type="text" 
                            value="#thisClient.scClientHomePhone#" />
                    </span>
                    <span class="span4">
                        <input 
                            name="scClientBusinessPhone" 
                            placeholder="Business phone" 
                            type="text" 
                            value="#thisClient.scClientBusinessPhone#" />
                    </span>
                    <span class="span4">
                        <input 
                            name="scClientCellPhone" 
                            placeholder="Cell phone" 
                            type="text" 
                            value="#thisClient.scClientCellPhone#" />
                    </span>
                </div>
                <div class="formRight mt12">
                    <span class="span4">
                        <input 
                            name="scClientEmail" 
                            placeholder="E-mail" 
                            type="text" 
                            value="#thisClient.scClientEmail#" />
                    </span>
                    <span class="span4">
                        <input 
                            class="datepicker" 
                            name="scClientDateBirth" 
                            placeholder="Date birth" 
                            type="text" 
                            value="#thisClient.scClientDateBirth#" />
                    </span>
                    <span class="span4">
                        <input 
                            name="scClientSocialSecurity" 
                            placeholder="Social Security" 
                            type="text" 
                            value="#thisClient.scClientSocialSecurity#" />
                    </span>
                </div>
                <div class="formRight mt12">
                    <span class="span4">
                        <input 
                            name="scClientAddress" 
                            placeholder="Address" 
                            type="text" 
                            value="#thisClient.scClientAddress#" />
                    </span>
                    <span class="span2">
                        <input 
                            name="scClientCity" 
                            placeholder="City" 
                            type="text" 
                            value="#thisClient.scClientCity#" />
                    </span>
                    <span class="span4">
						<select name="scClientUsState"> 
							<option value="" selected="selected">Select a State</option> 
							<cfloop query="usStates">
								<option 
                                    <cfif thisClient.scClientUsState EQ usStates.abbreviation> 
                                        selected="selected"
                                    </cfif>
                                    value="#usStates.abbreviation#">
                                    #usStates.name#
                                </option>
							</cfloop>
						</select>        
                    </span>
                    <span class="span2">
                        <input 
                            name="scClientZip" 
                            placeholder="Zip" 
                            type="text" 
                            value="#thisClient.scClientZip#" />
                    </span>
                </div>
            </div>
            <div class="formSubmit">
                <input type="submit" value="Save" class="redB" onClick="clientEdit(); return false;" />
            </div>
        </div>
    </fieldset>
</form>

</cfoutput>