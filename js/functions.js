$(document).on("ready", appStart);

function appStart () {


	/* Forms
	================================================== 
	================================================== */


	// Dates
	$( ".datepicker" ).datepicker({ 
		defaultDate: +7,
		autoSize: true,
		appendText: '(dd-mm-yyyy)',
		dateFormat: 'dd-mm-yy',
	});	

	//===== Masked input =====//
	
	//$.mask.definitions['~'] = "[+-]";
	$(".maskPhone").mask("(999) 999-9999");


	// Reload Uniform que no lo toma O_o
	$("select, input:checkbox, input:radio, input:file").uniform();

	// Style everything
	//$("select, input").uniform();


	/* Menus and drop-downs
	================================================== 
	================================================== */

	//===== Left menu selected item =====//

	$(".nav li a").on("click", selectLeftMenu);



	//===== Left navigation styling =====//
	
	$('li.this').prev('li').css('border-bottom-color', '#2c3237');
	$('li.this').next('li').css('border-top-color', '#2c3237');
	

	
	//===== User nav dropdown =====//		
	
	$('.dd').click(function () {
		$('.userDropdown').slideToggle(200);
	});
	$(document).bind('click', function(e) {
		var $clicked = $(e.target);
		if (! $clicked.parents().hasClass("dd"))
		$(".userDropdown").slideUp(200);
	});
	  

	//===== Admin nav dropdown =====//		
	
	$('.ddAdmin').click(function () {
		$('.adminDropdown').slideToggle(200);
	});
	$(document).bind('click', function(e) {
		var $clicked = $(e.target);
		if (! $clicked.parents().hasClass("ddAdmin"))
		$(".adminDropdown").slideUp(200);
	});

	//===== Middle navigation dropdowns =====//
	
	$('.mUser').click(function () {
		$('.mSub1').slideToggle(100);
	});
	$(document).bind('click', function(e) {
		var $clicked = $(e.target);
		if (! $clicked.parents().hasClass("mUser"))
		$(".mSub1").slideUp(100);
	});
	
	$('.mMessages').click(function () {
		$('.mSub2').slideToggle(100);
	});
	$(document).bind('click', function(e) {
		var $clicked = $(e.target);
		if (! $clicked.parents().hasClass("mMessages"))
		$(".mSub2").slideUp(100);
	});
	
	$('.mFiles').click(function () {
		$('.mSub3').slideToggle(100);
	});
	$(document).bind('click', function(e) {
		var $clicked = $(e.target);
		if (! $clicked.parents().hasClass("mFiles"))
		$(".mSub3").slideUp(100);
	});
	
	$('.mOrders').click(function () {
		$('.mSub4').slideToggle(100);
	});
	$(document).bind('click', function(e) {
		var $clicked = $(e.target);
		if (! $clicked.parents().hasClass("mOrders"))
		$(".mSub4").slideUp(100);
	});



	/* Message window
	================================================== 
	================================================== */


	// Messages window
	$( "#dialog-message" ).dialog({
		autoOpen: false,
		modal: true,
		buttons: {
			Ok: function() {
				$( this ).dialog( "close" );
			}
		}
	});


	// Note Delete Confirmation
	$( "#noteDeleteConfirm" ).dialog({
		autoOpen: false,
		modal: true,
		buttons: {
			Ok: function() {
				// Borra la nota
				var noteId = $("#noteToDelete").val();
				var clientId = $("#noteClientIdToDelete").val();
				$.post("/components/notes.cfc?method=noteDelete", {noteId:noteId});

				//Cierra el dialogo
				$( this ).dialog( "close" );

				//Recarga el grid
				noteLoadGrid(clientId);
			},
			Cancel: function() {
				$( this ).dialog( "close" );
			}
		}
	});


	/* Tables
	================================================== 
	================================================== */

			
	// Generate dynamic table
	oTable = $('.dTable').dataTable({
		"bJQueryUI": true,
		"bAutoWidth": false,
		"sPaginationType": "full_numbers",
		"sDom": '<"itemsPerPage"fl>t<"F"ip>',
		"oLanguage": {
			"sLengthMenu": "<span>Show entries:</span> _MENU_",
			"sSearch": "<span>Search:</span> _INPUT_ <i class='srch'></i>"
		}
	});
	oTable.fnDraw
	


	/* Unsorted functions
	================================================== 
	================================================== */


}


function selectLeftMenu()
{
	$('.nav li a').removeClass('active');
	$(this).addClass("active");
}