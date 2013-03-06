<div class="widget" id="legaMatterGrid">
<!---     <cfinclude template="legalMattersGrid.cfm" />
 ---></div>

<div id="legalMatterForm">
    <cfinclude template="legalMattersAdd.cfm" />
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