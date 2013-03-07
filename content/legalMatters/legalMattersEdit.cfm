<cfinvoke component="components.legalMattersStatus" method="legalMatterStatusGetAll" returnvariable="legalMatterStatusGetAllQuery" />
<cfinvoke component="components.usStates" method="usStatesGet" returnvariable="usStates" />
<cfinvoke component="components.legalMatters" method="legalMatterGet" returnvariable="legalMatterGetQuery">
    <cfinvokeargument name="legalMatterId" value="#URL.legalMatterId#" />
</cfinvoke>

<cfoutput>
<form class="form" action="" id="legalMatterEditForm">
    <fieldset>
		<div class="widget">
			<div class="title">
				<img src="images/icons/dark/list.png" alt="" class="titleIcon" /><h6>Edit Legal Matter</h6>
			</div>

			<div class="formRow fluid">
            	<label>Information:</label>
                <div class="formRight mt12">
                    <span class="span7">
                    	<select
                    		id="creditorId" 
                    		name="creditorId"> 
							<option value="" selected="selected">Select related account</option> 
							<option value="1">Account 1</option> 
							<option value="2">Account 2</option> 
							<option value="3">Account 3</option> 
							<option value="4">Account 4</option>
						</select>
                    </span>
                    <span class="span5">
                    	<select 
                    		id="userId"
                    		name="userId"> 
							<option value="" selected="selected">Assigned to</option> 
							<option value="1">Attorney 1</option> 
							<option value="2">Attorney 2</option> 
							<option value="3">Attorney 3</option> 
							<option value="4">Attorney 4</option>
						</select>
                    </span>
                </div>
                <div class="formRight mt12">
                    <span class="span3">
                    	<input 
                            id="legalMatterPlantiff"
                            name="legalMatterPlantiff"
                    		placeholder="Plantiff"
                    		type="text" 
                            value="#legalMatterGetQuery.legalMatterPlantiff#" />
                    </span>
                    <span class="span3">
                    	<input 
                            id="legalMatterDefender"
                            name="legalMatterDefender"
                    		placeholder="Defender"
                    		type="text" 
                            value="#legalMatterGetQuery.legalMatterDefender#" />
                    </span>
                    <span class="span3">
                    	<select id="legalMatterStatusId" name="legalMatterStatusId">
							<option value="0" selected="selected">Select Status</option> 
                    		<cfloop query="legalMatterStatusGetAllQuery">
                                <cfif legalMatterGetQuery.legalMatterStatusId EQ legalMatterStatusGetAllQuery.legalMatterStatusId>
                                    <option value="#legalMatterStatusId#" selected="selected">#legalMatterStatusName#</option>
                                <cfelse>
                                    <option value="#legalMatterStatusId#">#legalMatterStatusName#</option> 
                                </cfif>
                    		</cfloop> 
						</select>
                    </span>
                    <span class="span3">
                    	<input 
                            id="legalMatterRef"
                            name="legalMatterRef"
                    		placeholder="Ref"
                    		type="text" 
                            value="#legalMatterGetQuery.legalMatterRef#"/>
                    </span>
                </div>
                <div class="formRight mt12">
                    <span class="span6">
                    	<input
                    		class="datepicker"
                            id="legalMatterOpenDate" 
                            name="legalMatterOpenDate" 
                    		placeholder="Open Date"
                    		type="text"
                            value="#legalMatterGetQuery.legalMatterOpenDate#" />
                    </span>
                    <span class="span6">
                    	<input
                    		class="datepicker"
                            id="legalMatterCloseDate"
                            name="legalMatterCloseDate"
	                    	placeholder="Close Date"
                    		type="text"
                            value="#legalMatterGetQuery.legalMatterCloseDate#" />
                    </span>
                </div>
                <div class="formRight mt12">
                    <span class="span12">
                    	<textarea 
                            id="legalMatterDescription"
                            name="legalMatterDescription"
                    		placeholder="Description">#legalMatterGetQuery.legalMatterDescription#</textarea>
                    </span>
                </div>
            </div>


			<div class="formRow fluid">
            	<label>Opposing Counsel:</label>
                <div class="formRight mt12">
                    <span class="span6">
                    	<input 
                            id="legalMatterOCName"
                            name="legalMatterOCName"
                    		placeholder="Name"
                    		type="text"
                            value="#legalMatterGetQuery.legalMatterOCName#" />
                    </span>
                    <span class="span6">
                    	<input 
                            id="legalMatterOCLawFirm"
                            name="legalMatterOCLawFirm"
                    		type="text" 
                    		placeholder="Law Firm"
                            value="#legalMatterGetQuery.legalMatterOCLawFirm#" />
                    </span>
                </div>
                <div class="formRight mt12">
                    <span class="span4">
                    	<input 
                            id="legalMatterOCJurisdiction"
                            name="legalMatterOCJurisdiction"
                    		placeholder="Jurisdiction"
                    		type="text"
                            value="#legalMatterGetQuery.legalMatterOCJurisdiction#" />
                    </span>
                    <span class="span4">
                    	<input 
                            id="legalMatterOCEmail"
                            name="legalMatterOCEmail"
                    		placeholder="E-mail"
                    		type="text"
                            value="#legalMatterGetQuery.legalMatterOCEmail#" />
                    </span>
                    <span class="span2">
                    	<input 
                            id="legalMatterOCPhone"
                            name="legalMatterOCPhone"
                    		placeholder="Phone"
                    		type="text"
                            value="#legalMatterGetQuery.legalMatterOCPhone#" />
                    </span>
                    <span class="span2">
                    	<input 
                            id="legalMatterOCFax"
                            name="legalMatterOCFax"
                    		placeholder="Fax"
                    		type="text"
                            value="#legalMatterGetQuery.legalMatterOCFax#" />
                    </span>
                </div>
                <div class="formRight mt12">
                    <span class="span4">
                    	<input 
                            id="legalMatterOCAddress"
                            name="legalMatterOCAddress"
                    		placeholder="Address"
                    		type="text"
                            value="#legalMatterGetQuery.legalMatterOCAddress#" />
                    </span>
                    <span class="span2">
                    	<input 
                            id="legalMatterOCCity"
                            name="legalMatterOCCity"
                    		placeholder="City"
                    		type="text"
                            value="#legalMatterGetQuery.legalMatterOCCity#" />
                    </span>
                    <span class="span4">
						<select id="legalMatterOCUsState" name="legalMatterOCUsState"> 
							<option value="" selected="selected">Select a State</option> 
							<cfloop query="usStates">
                                <cfif legalMatterGetQuery.legalMatterOCUsState EQ usStates.abbreviation>
                                    <option value="#usStates.abbreviation#" selected="selected">
                                        #usStates.name#
                                    </option>                                
                                <cfelse>    
                                    <option value="#usStates.abbreviation#">
                                        #usStates.name#
                                    </option>
                                </cfif>
							</cfloop>
						</select>         
                    </span>
                    <span class="span2">
                    	<input 
                            id="legalMatterOCZip"
                            name="legalMatterOCZip"
                    		placeholder="Zip"
                    		type="text"
                            value="#legalMatterGetQuery.legalMatterOCZip#" />
                    </span>
                </div>
            </div>

		    <cfoutput>
            <div class="formSubmit">
                <input 
                    class="redB" 
                    onClick="legalMatterAdd(#legalMatterGetQuery.legalMatterId#); return false;"
                    type="submit" 
                    value="Save" />
            </div>
            </cfoutput>

        </div>
    </fieldset>
</form>
</cfoutput>