<cfinvoke component="components.usStates" method="usStatesGet" returnvariable="usStates" />
<cfinvoke component="components.properties" method="propertiesGet" returnvariable="propertiesGetQuery">
    <cfinvokeargument name="propertyId" value="#URL.propertyId#" />
</cfinvoke>


<form class="form" id="propertiesAddForm">
	<fieldset>
		<div class="widget">

			<div class="title">
				<img src="images/icons/dark/list.png" alt="" class="titleIcon" /><h6>Property</h6>
			</div>

			<div class="formRow fluid">
				<label>Property information:</label>
				<div class="formRight mt12">
					<span class="span4">
						<input 
							id="propertyAddress"
							name="propertyAddress"
							placeholder="Property Address"
							type="text"
							value="#propertiesGetQuery.propertyAddress#" />
					</span>
					<span class="span2">
						<input 
							id="propertyCity"
							name="propertyCity"
							placeholder="Property City"
							type="text"
							value="#propertiesGetQuery.propertyCity#" />
					</span>
					<span class="span4">
						<select id="propertyUsState" name="propertyUsState"> 
							<option value="" selected="selected">Select a State</option> 
							<cfloop query="usStates">
								<cfif propertiesGetQuery.propertyUsState EQ usStates.abbreviation>
									<option selected="selected" value="#usStates.abbreviation#">
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
							id="propertyZip"
							name="propertyZip"
							placeholder="Property Zip"
							type="text"
							value="#propertiesGetQuery.propertyZip#" />
					</span>
				</div>
			</div>
			<div class="formRow">
				<label>Have You Every Applied For A Loan Modification With Your Lender (Whether Verbally or in Writing)?</label>
				<div class="formRight">
					<select id="propertyAppliedLMWY" name="propertyAppliedLMWY">
						<cfif propertiesGetQuery.propertyAppliedLMWY EQ "Yes">
							<option  selected="selected" value="Yes">Yes</option>
							<option value="No">No</option>						
						<cfelse>
							<option value="Yes">Yes</option>
							<option selected="selected" value="No">No</option>
						</cfif>
					</select>
				</div>
			</div>
			<div class="formRow">                
				<label>What Date Did You Apply For a Loan Modification?</label>
				<div class="formRight">
					<input
						class="datepicker"
						id="propertyAppliedLM"
						name="propertyAppliedLM"
						type="text"
						value="#propertiesGetQuery.propertyAppliedLM#" />
				</div>
			</div>
			<div class="formRow">
				<label>Have You Ever Defaulted on a Government HAMP (MHA) Loan Modification?</label>
				<div class="formRight">
					<select id="propertyDefaultedHALMPMHA" name="propertyDefaultedHALMPMHA">
						<cfif propertiesGetQuery.propertyDefaultedHALMPMHA EQ "Yes">
							<option selected="selected" value="Yes">Yes</option>
							<option value="No">No</option>							
						<cfelse>
							<option value="Yes">Yes</option>
							<option selected="selected" value="No">No</option>
						</cfif>
					</select>
				</div>
			</div>
			<div class="formRow">
				<label>Have You Ever Defaulted on a Re-Payment Plan, HAMP or In-House Loan Modification?</label>
				<div class="formRight">
					<select id="propertyDefaultedHAMPIHLM" name="propertyDefaultedHAMPIHLM">
						<cfif propertiesGetQuery.propertyDefaultedHAMPIHLM EQ "Yes">
							<option selected="selected" value="Yes">Yes</option>
							<option value="No">No</option>							
						<cfelse>
							<option value="Yes">Yes</option>
							<option selected="selected" value="No">No</option>
						</cfif>
					</select>
				</div>
			</div>                
			<div class="formRow">
				<label>Monthly retainer</label>
				<div class="formRight">
					<input
						id="propertyMonthlyRetainer"
						name="propertyMonthlyRetainer"
						type="text"
						value="#propertiesGetQuery.propertyMonthlyRetainer#" />
				</div>
			</div>


			<div class="formRow fluid">
				<label>First Mortgage:</label>
				<div class="formRight mt12">
					<span class="span4">
						<input 
							id="propertyFMMorgageCompany"
							name="propertyFMMorgageCompany"
							placeholder="Mortgage Company"
							type="text"
							value="#propertiesGetQuery.propertyFMMorgageCompany#" />
					</span>
					<span class="span4">
						<input
							id="propertyFMLoanNumber"
							name="propertyFMLoanNumber"
							placeholder="Loan number"
							type="text"
							value="#propertiesGetQuery.propertyFMLoanNumber#" />
					</span>
					<span class="span4">
						<input
							id="propertyFMPrincipalBalanceOwed"
							name="propertyFMPrincipalBalanceOwed"
							placeholder="Principal Balance Owed"
							type="text"
							value="#propertiesGetQuery.propertyFMPrincipalBalanceOwed#" />
					</span>
				</div>
				<div class="formRight mt12">
					<span class="span4">
						<input
							id="propertyFMMonthlyPayment"
							name="propertyFMMonthlyPayment"
							placeholder="Monthly Payment"
							type="text"
							value="#propertiesGetQuery.propertyFMMonthlyPayment#" />
					</span>
					<span class="span4">
						<input
							id="propertyFMInterestRate"
							name="propertyFMInterestRate"
							placeholder="Interest Rate"
							type="text"
							value="#propertiesGetQuery.propertyFMInterestRate#" />
					</span>
					<span class="span4">
						<input 
							id="propertyFMTI"
							name="propertyFMTI"
							placeholder="T/I"
							type="text"
							value="#propertiesGetQuery.propertyFMTI#" />
					</span>
				</div>
				<div class="formRight mt12">
					<span class="span4">
						<input 
							id="propertyFMPaymentsBehind"
							name="propertyFMPaymentsBehind"
							placeholder="Number of Payments Behind"
							type="text"
							value="#propertiesGetQuery.propertyFMPaymentsBehind#" />
					</span>
					<span class="span4">
						<input 
							id="propertyFMDateLoanOpened"
							name="propertyFMDateLoanOpened"
							placeholder="Date loan opened"
							type="text"
							value="#propertiesGetQuery.propertyFMDateLoanOpened#" />
					</span>
					<span class="span4">
						<input 
							id="propertyFMDateLastPayment"
							name="propertyFMDateLastPayment"
							placeholder="Date of Last payment"
							type="text"
							value="#propertiesGetQuery.propertyFMDateLastPayment#" />
					</span>
				</div>
			</div>

			<div class="formRow fluid">
				<label>Second Mortgage:</label>
				<div class="formRight mt12">
					<span class="span4">
						<input 
							id="propertySMMorgageCompany"
							name="propertySMMorgageCompany"
							placeholder="Mortgage Company"
							type="text"
							value="#propertiesGetQuery.propertySMMorgageCompany#" />
					</span>
					<span class="span4">
						<input
							id="propertySMLoanNumber"
							name="propertySMLoanNumber"
							placeholder="Loan number"
							type="text"
							value="#propertiesGetQuery.propertySMLoanNumber#" />
					</span>
					<span class="span4">
						<input
							id="propertySMPrincipalBalanceOwed"
							name="propertySMPrincipalBalanceOwed"
							placeholder="Principal Balance Owed"
							type="text"
							value="#propertiesGetQuery.propertySMPrincipalBalanceOwed#" />
					</span>
				</div>
				<div class="formRight mt12">
					<span class="span4">
						<input
							id="propertySMMonthlyPayment"
							name="propertySMMonthlyPayment"
							placeholder="Monthly Payment"
							type="text"
							value="#propertiesGetQuery.propertySMMonthlyPayment#" />
					</span>
					<span class="span4">
						<input
							id="propertySMInterestRate"
							name="propertySMInterestRate"
							placeholder="Interest Rate"
							type="text"
							value="#propertiesGetQuery.propertySMInterestRate#" />
					</span>
					<span class="span4">
						<input 
							id="propertySMTI"
							name="propertySMTI"
							placeholder="T/I"
							type="text"
							value="#propertiesGetQuery.propertySMTI#" />
					</span>
				</div>
				<div class="formRight mt12">
					<span class="span4">
						<input 
							id="propertySMPaymentsBehind"
							name="propertySMPaymentsBehind"
							placeholder="Number of Payments Behind"
							type="text"
							value="#propertiesGetQuery.propertySMPaymentsBehind#" />
					</span>
					<span class="span4">
						<input 
							id="propertySMDateLoanOpened"
							name="propertySMDateLoanOpened"
							placeholder="Date loan opened"
							type="text"
							value="#propertiesGetQuery.propertySMDateLoanOpened#" />
					</span>
					<span class="span4">
						<input 
							id="propertySMDateLastPayment"
							name="propertyFMDateLastPayment"
							placeholder="Date of Last payment"
							type="text"
							value="#propertiesGetQuery.propertyFMDateLastPayment#" />
					</span>
				</div>
			</div>

		    <cfoutput>
            <div class="formSubmit">
                <input 
                    class="redB" 
                    onClick="propertiesAdd(#URL.clientId#); return false;"
                    type="submit" 
                    value="Save" />
            </div>
            </cfoutput>

		</div>
	</fieldset>
</form>