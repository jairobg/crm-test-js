<cfinvoke component="components.notes" method="noteGet" returnvariable="thisNote">
	<cfinvokeargument name="noteId" value="#URL.noteId#" />
</cfinvoke>

<cfoutput>
<form class="form" action="" id="noteEditForm">

    <input name="clientId" type="hidden" value="#thisNote.clientId#" />
    <input name="noteId" type="hidden" value="#thisNote.noteId#" />

	<fieldset>
		<div class="widget">

			<div class="title">
				<img src="images/icons/dark/list.png" alt="" class="titleIcon" />
                <h6>Edit Note</h6>
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
                            type="text" 
                            value="#thisNote.noteTitle#" />
                    </span>
                </div>
                <div class="formRight mt12">
                    <span class="span12">
                        <textarea
                            id="noteDescription" 
                            name="noteDescription" 
                            placeholder="Description"
                        >#thisNote.noteDescription#</textarea>
                    </span>
                </div>
            </div>

            <cfoutput>
		    <div class="formSubmit">
                <input 
                    class="redB" 
                    onClick="noteEdit('#thisNote.clientId#'); return false;"
                    type="submit" 
                    value="Save changes" />
            </div>
            </cfoutput>

        </div>
    </fieldset>
</form>
</cfoutput>
