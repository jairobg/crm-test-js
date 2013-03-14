<cfinvoke component="components.usStates" method="usStatesGet" returnvariable="usStates" />

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
							type="text" />
					</span>
					<span class="span2">
						<input 
							id="propertyCity"
							name="propertyCity"
							placeholder="Property City"
							type="text" />
					</span>
					<span class="span4">
						<select id="propertyUsState" name="propertyUsState"> 
							<option value="" selected="selected">Select a State</option> 
							<cfloop query="usStates">
								<option value="#usStates.abbreviation#">
									#usStates.name#
								</option>
							</cfloop>
						</select>
					</span>
					<span class="span2">
						<input 
							id="propertyZip"
							name="propertyZip"
							placeholder="Property Zip"
							type="text" />
					</span>
				</div>
			</div>
			<div class="formRow">
				<label>Have You Every Applied For A Loan Modification With Your Lender (Whether Verbally or in Writing)?</label>
				<div class="formRight">
					<select id="propertyAppliedLMWY" name="propertyAppliedLMWY">
						<option value="Yes">Yes</option>
						<option value="No" selected="selected">No</option>
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
						type="text" />
				</div>
			</div>
			<div class="formRow">
				<label>Have You Ever Defaulted on a Government HAMP (MHA) Loan Modification?</label>
				<div class="formRight">
					<select id="propertyDefaultedHALMPMHA" name="propertyDefaultedHALMPMHA">
						<option value="Yes">Yes</option>
						<option value="No" selected="selected">No</option>
					</select>
				</div>
			</div>
			<div class="formRow">
				<label>Have You Ever Defaulted on a Re-Payment Plan, HAMP or In-House Loan Modification?</label>
				<div class="formRight">
					<select id="propertyDefaultedHAMPIHLM" name="propertyDefaultedHAMPIHLM">
						<option value="Yes">Yes</option>
						<option value="No" selected="selected">No</option>
					</select>
				</div>
			</div>                
			<div class="formRow">
				<label>Monthly retainer</label>
				<div class="formRight">
					<input
						id="propertyMonthlyRetainer"
						name="propertyMonthlyRetainer"
						type="text" />
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
							type="text" />
					</span>
					<span class="span4">
						<input
							id="propertyFMLoanNumber"
							name="propertyFMLoanNumber"
							placeholder="Loan number"
							type="text" />
					</span>
					<span class="span4">
						<input
							id="propertyFMPrincipalBalanceOwed"
							name="propertyFMPrincipalBalanceOwed"
							placeholder="Principal Balance Owed"
							type="text" />
					</span>
				</div>
				<div class="formRight mt12">
					<span class="span4">
						<input
							id="propertyFMMonthlyPayment"
							name="propertyFMMonthlyPayment"
							placeholder="Monthly Payment"
							type="text" />
					</span>
					<span class="span4">
						<input
							id="propertyFMInterestRate"
							name="propertyFMInterestRate"
							placeholder="Interest Rate"
							type="text" />
					</span>
					<span class="span4">
						<input 
							id="propertyFMTI"
							name="propertyFMTI"
							placeholder="T/I"
							type="text" />
					</span>
				</div>
				<div class="formRight mt12">
					<span class="span4">
						<input 
							id="propertyFMPaymentsBehind"
							name="propertyFMPaymentsBehind"
							placeholder="Number of Payments Behind"
							type="text" />
					</span>
					<span class="span4">
						<input 
							id="propertyFMDateLoanOpened"
							name="propertyFMDateLoanOpened"
							placeholder="Date loan opened"
							type="text" />
					</span>
					<span class="span4">
						<input 
							id="propertyFMDateLastPayment"
							name="propertyFMDateLastPayment"
							placeholder="Date of Last payment"
							type="text" />
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
							type="text" />
					</span>
					<span class="span4">
						<input
							id="propertySMLoanNumber"
							name="propertySMLoanNumber"
							placeholder="Loan number"
							type="text" />
					</span>
					<span class="span4">
						<input
							id="propertySMPrincipalBalanceOwed"
							name="propertySMPrincipalBalanceOwed"
							placeholder="Principal Balance Owed"
							type="text" />
					</span>
				</div>
				<div class="formRight mt12">
					<span class="span4">
						<input
							id="propertySMMonthlyPayment"
							name="propertySMMonthlyPayment"
							placeholder="Monthly Payment"
							type="text" />
					</span>
					<span class="span4">
						<input
							id="propertySMInterestRate"
							name="propertySMInterestRate"
							placeholder="Interest Rate"
							type="text" />
					</span>
					<span class="span4">
						<input 
							id="propertySMTI"
							name="propertySMTI"
							placeholder="T/I"
							type="text" />
					</span>
				</div>
				<div class="formRight mt12">
					<span class="span4">
						<input 
							id="propertySMPaymentsBehind"
							name="propertySMPaymentsBehind"
							placeholder="Number of Payments Behind"
							type="text" />
					</span>
					<span class="span4">
						<input 
							id="propertySMDateLoanOpened"
							name="propertySMDateLoanOpened"
							placeholder="Date loan opened"
							type="text" />
					</span>
					<span class="span4">
						<input 
							id="propertySMDateLastPayment"
							name="propertyFMDateLastPayment"
							placeholder="Date of Last payment"
							type="text" />
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