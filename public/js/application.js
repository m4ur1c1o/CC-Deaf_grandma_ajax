$(document).ready(function() {
	// Este código corre después de que `document` fue cargado(loaded) 
	// completamente. 
	// Esto garantiza que si amarramos(bind) una función a un elemento 
	// de HTML este exista ya en la página. 

	// $( "#abue" ).submit(function( event ) {
	//   alert( "Handler for .submit() called." );
	//   event.preventDefault();
	// });

	$( "form" ).on( "submit", function( event ) {
	  event.preventDefault();
		var post = $.post('/abue', $( this ).serialize());

		// Put result in a div
		post.done(function( data ) {

	    $( "#abue_respond" ).empty().append( data );
	  });
	});
});
