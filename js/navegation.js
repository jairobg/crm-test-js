// ------------------------------------------------------------------------------
// ------------------------------------------------------------------------------
// General
// ------------------------------------------------------------------------------
// ------------------------------------------------------------------------------

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
			$("#principalContent").load("content/clients/clientsEdit.cfm?clientId="+clientId, appStart);
			break;

		case 'legalMatters':
			$("#principalContent").load("content/legalMatters/legalMatters.cfm?clientId="+clientId, appStart);
			break;

		case 'activities':
			$("#principalContent").load("content/activities.html");
			break;

		case 'notes':
			$("#principalContent").load("content/notes/notes.cfm?clientId="+clientId, appStart);
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
// ------------------------------------------------------------------------------
// Clients
// ------------------------------------------------------------------------------
// ------------------------------------------------------------------------------

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
// ------------------------------------------------------------------------------
// Legal Matters
// ------------------------------------------------------------------------------
// ------------------------------------------------------------------------------

function legalMatterLoadGrid(clientId)
{
	// Regarga el grid
	$("#legalMatterGrid").load("content/legalMatters/legalMattersGrid.cfm?clientId="+clientId, appStart);
	// Scrool hasta el grid
	$('html,body').animate({scrollTop: $('#legalMatterGrid').offset().top}, 500);
}

function legalMatterLoadForm(clientId)
{
	$("#legalMatterForm").load("content/legalMatters/legalMatterAdd.cfm?clientId="+clientId, appStart);
}

function legalMatterAdd(clientId)
{
	if($("#legalMatterAddForm").validationEngine('validate'))
	{
		ColdFusion.Ajax.submitForm('legalMatterAddForm','/components/legalMatters.cfc?method=legalMatterAdd');
		// Recarga new note para no dejar el formulario con datos
		legalMatterLoadForm(clientId);
		// Recarga el grid
		legalMatterLoadGrid(clientId);
    }
}

function legalMatterDelete(legalMatterId,clientId)
{

	$( "#dialog-message" ).dialog({
		autoOpen: false,
		modal: true,
		buttons: {
			Ok: function() {
				$.post("/components/legalMatters.cfc?method=legalMatterDelete", {legalMatterId:legalMatterId});

				//Cierra el dialogo
				$( this ).dialog( "close" );

				//Recarga el grid
				legalMatterLoadGrid(clientId);
			},
			Cancel: function() {
				$( this ).dialog( "close" );
			}
		}
	});

	//Crea el contenido del cuadro de dialogo.
	var legalMatterDeleteHTML = '<img src="images/icons/notifications/error.png" alt="" class="icon"><p><strong>WARNING: </strong>Are you sure you want to delete this leggal Matter</p>';
	$("#dialog-message").html(legalMatterDeleteHTML);

	//Abre el cuadro del dialogo y el borrado en la db se llama desde alla
	$("#dialog-message").dialog("open");
}

function legalMatterEdit(clientId)
{
	if($("#legalMatterEditForm").validationEngine('validate'))
	{
		ColdFusion.Ajax.submitForm('legalMatterEditForm','/components/legalMatters.cfc?method=legalMatterEdit');
    }
	//Recarga el grid
	legalMatterLoadGrid(clientId);
	//Recarga el formulario
	legalMatterLoadForm(clientId);
}

function legalMatterToEdit(legalMatterId)
{
	$("#legalMatterForm").load("content/legalMatters/legalMattersEdit.cfm?legalMatterId="+legalMatterId);
	$('html,body').animate({scrollTop: $('#legalMatterForm').offset().top}, 500);
}


// ------------------------------------------------------------------------------
// ------------------------------------------------------------------------------
// Notes
// ------------------------------------------------------------------------------
// ------------------------------------------------------------------------------

function noteLoadGrid(clientId)
{
	$("#noteGrid").load("content/notes/notesGrid.cfm?clientId="+clientId, appStart);
}

function noteAdd(clientId)
{
	if($("#noteAddForm").validationEngine('validate'))
	{
		ColdFusion.Ajax.submitForm('noteAddForm','/components/notes.cfc?method=noteAdd');
		//Recarga new note para el formulario
		$("#noteForm").load("content/notes/notesAdd.cfm?clientId="+clientId);
		// Scrool hasta el grid
		$('html,body').animate({scrollTop: $('#noteGrid').offset().top}, 500);
		//Recarga el grid
		noteLoadGrid(clientId);
    }
}

function noteToEdit(noteId)
{
	$("#noteForm").load("content/notes/notesEdit.cfm?noteId="+noteId);
	$('html,body').animate({scrollTop: $('#noteForm').offset().top}, 500);
}

function noteEdit(clientId)
{
	if($("#noteEditForm").validationEngine('validate'))
	{
		ColdFusion.Ajax.submitForm('noteEditForm','/components/notes/notes.cfc?method=noteEdit');
    }
    // Recarga el grid
    noteLoadGrid(clientId);
	// Scrool hasta el grid
	$('html,body').animate({scrollTop: $('#noteGrid').offset().top}, 500);
	//Recarga new note para el formulario
	$("#noteForm").load("content/notes/notesAdd.cfm?clientId="+clientId);

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