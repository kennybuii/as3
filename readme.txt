alright this assignment was pretty confusing, but the basic premise is:
1. have your robot read a barcode, the sizes of the barcode can vary, and as of right now our robot can only handle BCDEF,
    not A because it's too small and hard to read
2. save that data to a .csv file
3. now the data will be very choppy or "noisy" is what they call it
4. we turn the graph into an array and smoothen it
5. afterwards, we want to take the derivative of the graph so that we can determine whenever there is a change
6. then we smoothen that graph again (just easier to interpret)
7. finally we can find the peaks and the indices
8. now we have to determine the width of each peak
9. we use a ratio to compare a single width to the entire area of the graph
10. ARBITRARY: if it's less than 1.0, then its a thing bar, otherwise it's a thickbar
11. create a string off that and compare to lookbook
12. print and done


*play around with the graphs first, just uncomment the lines that have plot in them, if you want to
*open multiple plots at once you have to use that hold on syntax, but just google it for a better example
