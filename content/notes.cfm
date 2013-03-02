<div class="widget" id="noteGrid">
    <cfinclude template="/content/notesGrid.cfm" />
</div>

<div id="noteForm">
    <cfinclude template="/content/notesAdd.cfm" />
</div>



<!---
    This input save the id of note and client to delete
--->
<input id="noteToDelete" type="hidden" value="">
<input id="noteClientIdToDelete" type="hidden" value="">
<input id="noteTitleToDelete" type="hidden" value="">

<!---
    Popup - Element alert
--->
<div class="uDialog">
    <div id="noteDeleteConfirm" title="Delete Note">
    </div>
</div>