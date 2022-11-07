alright this assignment was pretty confusing, but the basic premise is:
1. have your robot read a barcode 
2. save that data to a .csv file
3. now the data will be very choppy or "noisy" is what they call it
4. we turn the graph into an array and smoothen it
5. afterwards, we want to take the derivative of the graph so that we can determine whenever there is a change
6. then we smoothen that graph again (just easier to interpret)
7.finally we can find the peaks and the indices
8. now we have to determine where the width of each peaks
9. we can determine whether or not it's black or white by whether the index is even or odd, but i'm not sure how to determine the width and lookbook yet


*play around with the graphs first, just uncomment the lines that have plot in them, if you want to
*open multiple plots at once you have to use that hold on syntax, but just google it for a better example