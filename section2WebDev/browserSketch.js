$(document).ready( function() {
	// Set up the drawing field and cell parameters
var numberOfSquares = 1600;
var squaresPerSide = Math.sqrt(numberOfSquares);
var widthOfField = 500-4;
var drawingCellDimension = (widthOfField/squaresPerSide) - 2;
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

	//console.log("drawingCellDimension: " + drawingCellDimension );
$('.drawingCell').on('mouseenter', function() {
	$(this).css('background-color', '#0ff');

	});
});