<form class="form" action="" id="noteAddForm">

    <cfoutput>
    <input name="clientId" type="hidden" value="#URL.clientId#">
    </cfoutput>

	<fieldset>
		<div class="widget">

			<div class="title">
				<img src="images/icons/dark/list.png" alt="" class="titleIcon" />
                <h6>New Note</h6>
			</div>

			<div class="formRow fluid">
            	<label>
                    Note:
                    <span class="req">*</span>
                </label>
                <div class="formRight mt12">
                    <span class="span12">
                        <input 
                            class="validate[required]"
                            id="noteTitle"
                            name="noteTitle" 
                            placeholder="Title" 
                            type="text" />
                    </span>
                </div>
                <div class="formRight mt12">
                    <span class="span12">
                        <textarea
                            id="noteDescription" 
                            name="noteDescription" 
                            placeholder="Description"
                        ></textarea>
                    </span>
                </div>
            </div>

            <cfoutput>
		    <div class="formSubmit">
                <input type="submit" value="Save" class="redB" onClick="noteAdd('#URL.clientId#'); return false;" />
            </div>
            </cfoutput>

        </div>
    </fieldset>
</form>