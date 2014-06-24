$(document).ready( function() {
	// Set up the drawing field and cell parameters
var numberOfSquares = 25;
var squaresPerSide = Math.sqrt(numberOfSquares);
var widthOfField = 690;
var cellBorderDimension = 0;	
var drawingCellDimension = (widthOfField/squaresPerSide) - 2*cellBorderDimension;


// Set the border for the drawing cells


// Draw the cells
drawTheSquares();



/************** Event handlers ****************************/

	// Handle button click for Start Over
$('.startOver').on('click', function() {
	// Delete the current grid
	deleteTheSquares();
	getNumberOfSquaresPerSide();
	drawTheSquares();
});

/************** Functions *********************************/

function getNumberOfSquaresPerSide() {
	var number;
	do {
		number = prompt("How many squares per side for your next game? Please pick a number from 1 to 77.");
	}
	while( (number < 1) || (number > 77) );
	squaresPerSide = number;
};

function drawTheSquares() {
	drawingCellDimension = (widthOfField/squaresPerSide) - 2*cellBorderDimension;
	numberOfSquares = squaresPerSide*squaresPerSide;
	// Add the wrapper div playingField to the DOM to hold the squares
	$('.wrapper').append("<div class='playingField'></div>");

	// Draw the squares one row at a time

	for (var j = 0; j < squaresPerSide; j++) {
		// make the div for the row
		$('.playingField').append('<div class="row' + j + '"></div>');
		// make the div have the correct height
		$('.' + thisRow).height(drawingCellDimension + 2*cellBorderDimension);

		// Add the cells to the row
		var thisRow = "row" + j;

		for (var i = 0; i < squaresPerSide; i++) {
			$('.' + thisRow).append('<div class="drawingCell"></div>');
		};

	};


	// Set the styling for the proper dimensions
	$('.drawingCell').height(drawingCellDimension);	
	$('.drawingCell').width(drawingCellDimension);	

	$('.drawingCell').css('border-style', 'solid');
	$('.drawingCell').css('border-color', 'white');
	$('.drawingCell').css('border-width', cellBorderDimension);


	// Start the new mouseenter event handler for the new cell divs:
	// Change the cell color when the mouse touches it
	$('.drawingCell').on('mouseenter', function() {
		$(this).css('background-color', '#0ff');
	});
};

function deleteTheSquares() {
		$('.playingField').remove();
	};
});