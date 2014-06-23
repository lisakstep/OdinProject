$(document).ready( function() {
	// Set up the drawing field and cell parameters
var numberOfSquares = 16;
var squaresPerSide = Math.sqrt(numberOfSquares);
var widthOfField = 500-4;
var drawingCellDimension = (widthOfField/squaresPerSide) - 2;
	//alert("the jquery file");
	//console.log("yep, i'm loaded.");
// Add the wrapper div to the DOM
$('.wrapper').append("<div class='playingField'></div>");

// Draw the cells
drawTheSquares();

// Set the styling for the proper dimensions
//$('.drawingCell').height(drawingCellDimension);	
//$('.drawingCell').width(drawingCellDimension);	

	//console.log("drawingCellDimension: " + drawingCellDimension );


/************** Event handlers ****************************/
	// Change the cell color when the mouse touches it
$('.drawingCell').on('mouseenter', function() {
	$(this).css('background-color', '#0ff');
	});

	// Handle button click for Start Over
$('.startOver').on('click', function() {
	// Hidejqu the current grid
	deleteTheSquares();
	getNumberOfSquaresPerSide();
	console.log("new squaresPerSide as entered by user is "  + squaresPerSide);
	drawTheSquares();
});

/************** Functions *********************************/

function getNumberOfSquaresPerSide() {
	var number;
	do {
		number = prompt("How many squares per side for your next game?");
	}
	while( (number < 2) && (number > 35) );
	squaresPerSide = number;
};

function drawTheSquares() {
	drawingCellDimension = (widthOfField/squaresPerSide) - 2;
	numberOfSquares = squaresPerSide*squaresPerSide;
	for (var i = 0; i < numberOfSquares; i++) {
		$('.playingField').append('<div class="drawingCell"></div>');
	}
	// Set the styling for the proper dimensions
$('.drawingCell').height(drawingCellDimension);	
$('.drawingCell').width(drawingCellDimension);	
};

function deleteTheSquares() {
		$('.drawingCell').remove();
	};
});