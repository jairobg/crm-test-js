<cfinvoke component="components.legalMatters" method="legalMatterGetAll" returnvariable="legalMatterGetAllQuery">
    <cfinvokeargument name="clientId" value="#URL.clientId#" />
</cfinvoke>

<div class="title">
    <img src="images/icons/dark/full2.png" alt="" class="titleIcon" />
    <h6>Legal Matters</h6>
</div>

<table cellpadding="0" cellspacing="0" border="0" class="display dTable">

    <thead>
        <tr>
            <th>Open Date</th>
            <th>Close Date</th>
            <th>Opposing Counsel</th>
            <th>Creation Date</th>
            <th>Actions</th>
        </tr>
    </thead>

    <tbody>
        <cfoutput query="legalMatterGetAllQuery">
        <tr class="gradeA">
            <td class="center">#dateFormat(legalMatterOpenDate, "dd-mmm-yyyy 'at' HH:mm:ss")#</td>
            <td class="center">#dateFormat(legalMatterCloseDate, "dd-mmm-yyyy 'at' HH:mm:ss")#</td>
            <td>#legalMatterOCName#</td>
            <td class="center">#dateFormat(legalMatterCreationDate, "dd-mmm-yyyy 'at' HH:mm:ss")#</td>
            <td class="actBtns">
                <a href="javaScript:legalMatterToEdit('#legalMatterId#');" title="Update" class="tipS">
                    <img src="images/icons/edit.png" alt="" />
                </a>
                <a href="javaScript:legalMatterDelete('#legalMatterId#','#clientId#');" title="Remove" class="tipS">
                    <img src="images/icons/remove.png" alt="" />
                </a>
            </td>
        </tr>
        </cfoutput>
    </tbody>
</table>