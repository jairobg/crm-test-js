// ------------------------------------------------------------------------------
// General

function fPrincipalContent(goTo)
{

	var clientId = localStorage.getItem('clientId');
	
	switch(goTo)
	{
		case 'dashboard':
			hideLeftBar();
			$("#principalContent").load("content/dashboard.cfm", appStart);
			break;

		case 'client':
			$("#principalContent").load("content/client.cfm?clientId="+clientId, appStart);
			break;

		case 'legalMatters':
			$("#principalContent").load("content/legalMatters.html");
			break;

		case 'activities':
			$("#principalContent").load("content/activities.html");
			break;

		case 'notes':
			$("#principalContent").load("content/notes.cfm?clientId="+clientId, appStart);
			break;

		case 'properties':
			$("#principalContent").load("content/properties.html");
			break;


		default:
			$("#principalContent").load("content/dashboard.cfm");

	}

}



function showLeftBar()
{
	$("#leftSide").css({
		display: "block"
	})
	$("body").css({
		background: "url(../images/backgrounds/bodyBg.png) repeat-y 0 0"
	})
}


function hideLeftBar()
{
	$("#leftSide").css({
		display: "none"
	})
	$("body").css({
		background: "none"
	})
}

// ------------------------------------------------------------------------------
// Clients

function clientEdit()
{
	if($("#clientEditForm").validationEngine('validate'))
	{
		ColdFusion.Ajax.submitForm('clientEditForm','/components/clients.cfc?method=clientEdit');
    }
}


function clientSelect(clientId)
{
	showLeftBar();

	localStorage.clear();
	localStorage.setItem('clientId', clientId);
	
	fPrincipalContent('client');
}


// ------------------------------------------------------------------------------
// Notes

function noteLoadGrid(clientId)
{
	$("#noteGrid").load("content/notesGrid.cfm?clientId="+clientId, appStart);
}

function noteAdd(clientId)
{
	if($("#noteAddForm").validationEngine('validate'))
	{
		ColdFusion.Ajax.submitForm('noteAddForm','/components/notes.cfc?method=noteAdd');
    }
	//Recarga new note para el formulario
	$("#noteForm").load("content/notesAdd.cfm?clientId="+clientId);
	// Scrool hasta el grid
	$('html,body').animate({scrollTop: $('#noteGrid').offset().top}, 500);
	//Recarga el grid
	noteLoadGrid(clientId);
}

function noteToEdit(noteId)
{
	$("#noteForm").load("content/notesEdit.cfm?noteId="+noteId);
	$('html,body').animate({scrollTop: $('#noteForm').offset().top}, 500);
}

function noteEdit(clientId)
{
	if($("#noteEditForm").validationEngine('validate'))
	{
		ColdFusion.Ajax.submitForm('noteEditForm','/components/notes.cfc?method=noteEdit');
    }
    // Recarga el grid
    noteLoadGrid(clientId);
	// Scrool hasta el grid
	$('html,body').animate({scrollTop: $('#noteGrid').offset().top}, 500);
	//Recarga new note para el formulario
	$("#noteForm").load("content/notesAdd.cfm?clientId="+clientId);

}

function noteDelete(noteId,clientId,noteTitle)
{
	$("#noteToDelete").val(noteId);
	$("#noteTitleToDelete").val(noteTitle);
	$("#noteClientIdToDelete").val(clientId);

	//Crea el contenido del cuadro de dialogo.
	var htmlNoteDelete = '<img src="images/icons/notifications/error.png" alt="" class="icon"><p><strong>WARNING: </strong>Are you sure you want to delete the note: <strong>'+noteTitle+'</strong></p>';

	$("#noteDeleteConfirm").html(htmlNoteDelete);

	//Abre el cuadro del dialogo y el borrado en la db se llama desde alla
	$("#noteDeleteConfirm").dialog("open");
}