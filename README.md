# ContrastFinder

A MATLAB function for calculating the root-mean-square (RMS) contrast value of an input image. It does so by first converting the image to grayscale using the built-in rgb2gray function, then iterating through each pixel to calculate the average brightness and the difference between each pixel's brightness and the average brightness. The squared differences are then added up, divided by the total number of pixels, and the square root of this value is returned as the RMS contrast.


<h1 style="font-size: 6px;">Input</h1>

Im - the input image to be analysed


<h1 style="font-size: 6px;">Output</h1>

contrastFinder - the calculated RMS contrast of the input image


<h1 style="font-size: 6px;">Author</h1>

This program was written by Matt Bradstreet.


<h1 style="font-size: 6px;">Version History</h1>

1.0 - Initial Release
