$(document).ready( function() {
	// Set up the drawing field and cell parameters
var numberOfSquares = 16;
var drawingCellDimension = (500/Math.sqrt(numberOfSquares)) - 2*Math.sqrt(numberOfSquares);
	//alert("the jquery file");
	//console.log("yep, i'm loaded.");
// Add the wrapper div to the DOM
$('body').append("<div class='wrapper'></div>");

	// Draw the cells
for (var i = 0; i < numberOfSquares; i++) {
	$('.wrapper').append('<div class="drawingCell"></div>');
}

	// Set the styling for the proper dimensions
	$('.drawingCell').height(drawingCellDimension);	
	$('.drawingCell').width(drawingCellDimension);	

});