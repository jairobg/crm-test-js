<cfinvoke component="components.usStates" method="getUsStates" returnvariable="usStates" />

<cfoutput>
<form class="form formToValidate" action="client.cfm" id="clientForm">
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
                            value="#SESSION.client.client.clientFirstName#" />
                    </span>
                    <span class="span2">
                        <input 
                            name="clientMiddleName" 
                            placeholder="Middle Name" 
                            type="text" 
                            value="#SESSION.client.client.clientMiddleName#" />
                    </span>
                    <span class="span5">
                        <input 
                            name="clientLastName" 
                            placeholder="Last Name" 
                            type="text" 
                            value="#SESSION.client.client.clientLastName#" />
                    </span>
                </div>
                <div class="formRight mt12">
                    <span class="span4">
                        <input 
                            class="maskPhone"
                            name="clientHomePhone" 
                            placeholder="Home phone" 
                            type="text" 
                            value="#SESSION.client.client.clientHomePhone#" />
                        <span class="formNote">(999) 999-9999</span>
                    </span>
                    <span class="span4">
                        <input 
                            class="maskPhone"
                            name="clientBusinessPhone" 
                            placeholder="Business phone" 
                            type="text" 
                            value="#SESSION.client.client.clientBusinessPhone#" />
                        <span class="formNote">(999) 999-9999</span>
                    </span>
                    <span class="span4">
                        <input 
                            class="maskPhone"
                            name="clientCellPhone" 
                            placeholder="Cell phone" 
                            type="text" 
                            value="#SESSION.client.client.clientCellPhone#" />
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
                            value="#SESSION.client.client.clientEmail#" />
                    </span>
                    <span class="span4">
                        <input 
                            class="datepicker" 
                            name="clientDateBirth" 
                            placeholder="Date birth" 
                            type="text" 
                            value="#SESSION.client.client.clientDateBirth#" />
                    </span>
                    <span class="span4">
                        <input 
                            name="clientSocialSecurity" 
                            placeholder="Social Security" 
                            type="text" 
                            value="#SESSION.client.client.clientSocialSecurity#" />
                    </span>
                </div>
                <div class="formRight mt12">
                    <span class="span4">
                        <input 
                            type="text" 
                            placeholder="Address" 
                            name="clientAddress" 
                            value="#SESSION.client.client.clientAddress#" />
                    </span>
                    <span class="span2">
                        <input 
                            name="clientCity" 
                            placeholder="City" 
                            type="text" 
                            value="#SESSION.client.client.clientCity#" />
                    </span>
                    <span class="span4">
						<select name="clientUsState"> 
							<option value="" selected="selected">Select a State</option> 
							<cfloop query="usStates">
								<option 
                                    <cfif SESSION.client.client.clientUsState EQ usStates.abbreviation>
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
                            value="#SESSION.client.client.clientZip#" />
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
                            value="#SESSION.client.scClient.scClientFirstName#" />
                    </span>
                    <span class="span2">
                        <input 
                            name="scClientMiddleName" 
                            placeholder="Middle Name" 
                            type="text" 
                            value="#SESSION.client.scClient.scClientMiddleName#" />
                    </span>
                    <span class="span5">
                        <input 
                            name="scClientLastName" 
                            placeholder="Last Name" 
                            type="text" 
                            value="#SESSION.client.scClient.scClientLastName#" />
                    </span>
                </div>
                <div class="formRight mt12">
                    <span class="span4">
                        <input 
                            name="scClientHomePhone" 
                            placeholder="Home phone" 
                            type="text" 
                            value="#SESSION.client.scClient.scClientHomePhone#" />
                    </span>
                    <span class="span4">
                        <input 
                            name="scClientBusinessPhone" 
                            placeholder="Business phone" 
                            type="text" 
                            value="#SESSION.client.scClient.scClientBusinessPhone#" />
                    </span>
                    <span class="span4">
                        <input 
                            name="scClientCellPhone" 
                            placeholder="Cell phone" 
                            type="text" 
                            value="#SESSION.client.scClient.scClientCellPhone#" />
                    </span>
                </div>
                <div class="formRight mt12">
                    <span class="span4">
                        <input 
                            name="scClientEmail" 
                            placeholder="E-mail" 
                            type="text" 
                            value="#SESSION.client.scClient.scClientEmail#" />
                    </span>
                    <span class="span4">
                        <input 
                            class="datepicker" 
                            name="scClientDateBirth" 
                            placeholder="Date birth" 
                            type="text" 
                            value="#SESSION.client.scClient.scClientDateBirth#" />
                    </span>
                    <span class="span4">
                        <input 
                            name="scClientSocialSecurity" 
                            placeholder="Social Security" 
                            type="text" 
                            value="#SESSION.client.scClient.scClientSocialSecurity#" />
                    </span>
                </div>
                <div class="formRight mt12">
                    <span class="span4">
                        <input 
                            name="scClientAddress" 
                            placeholder="Address" 
                            type="text" 
                            value="#SESSION.client.scClient.scClientAddress#" />
                    </span>
                    <span class="span2">
                        <input 
                            name="scClientCity" 
                            placeholder="City" 
                            type="text" 
                            value="#SESSION.client.scClient.scClientCity#" />
                    </span>
                    <span class="span4">
						<select name="scClientUsState"> 
							<option value="" selected="selected">Select a State</option> 
							<cfloop query="usStates">
								<option 
                                    <cfif SESSION.client.scClient.scClientUsState EQ usStates.abbreviation> 
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
                            value="#SESSION.client.scClient.scClientZip#" />
                    </span>
                </div>
            </div>
        </div>
    </fieldset>
</form>

<fieldset>
	<div class="widget">
        <!---
        <a href="javaScript:validateForms();loadingOpener();ColdFusion.Ajax.submitForm('clientForm','/components/client.cfc?method=saveClient',loadingCloser);" title="" class="button redB" style="margin: 5px;">
            <span>Save changes</span>
        </a>
        --->
        <a href="javaScript:validateForms();" title="" class="button redB" style="margin: 5px;">
            <span>Save changes</span>
        </a>
	</div>
</fieldset>

</cfoutput>


<!---
    Loader
--->
<div class="uDialog">
    <div id="dialog-message" title="Saving">
    	<br>
        <p><center><img src="images/loaders/loader9.gif" alt="" style="margin: 5px;"></center></p>
    </div>
</div>

<cfdump var="#SESSION#">