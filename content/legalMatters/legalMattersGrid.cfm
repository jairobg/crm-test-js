<cfinvoke component="components.notes" method="noteGetAll" returnvariable="thisNotes">
    <cfinvokeargument name="clientId" value="#URL.clientId#" />
</cfinvoke>

<div class="title">
    <img src="images/icons/dark/full2.png" alt="" class="titleIcon" />
    <h6>Notes</h6>
</div>

<table cellpadding="0" cellspacing="0" border="0" class="display dTable">

    <thead>
        <tr>
            <th>Title</th>
            <th>Description</th>
            <th>Datetime</th>
            <th>Actions</th>
        </tr>
    </thead>

    <tbody>
        <cfoutput query="thisNotes">
        <tr class="gradeA">
            <td>#noteTitle#</td>
            <td>#Left(noteDescription,20)# ...</td>
            <td class="center">#dateFormat(noteCreationDate, "dd-mmm-yyyy 'at' HH:mm:ss")#</td>
            <td class="actBtns">
                <a href="javaScript:noteToEdit('#noteId#');" title="Update" class="tipS">
                    <img src="images/icons/edit.png" alt="" />
                </a>
                <a href="javaScript:noteDelete('#noteId#','#clientId#','#noteTitle#');" title="Remove" class="tipS">
                    <img src="images/icons/remove.png" alt="" />
                </a>
            </td>
        </tr>
        </cfoutput>
    </tbody>
</table>