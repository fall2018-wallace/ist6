
#9)	Generate a bar chart, with the number of murders per state. Rotate text (on the X axis), so we can see x labels, also add a title named "Total Murders".

#We use the geom_col() function to generate a bar chart
#Theme() function helps us control the appearance of the visualisations.

h <- ggplot(mergedDataframe,aes(x=stateName,y=Murder)) + geom_col()+ theme(axis.text.x=element_text(angle=90,hjust=1))+ ggtitle("Total Murders")

#10)	 Generate a new bar chart, the same as in the previous step, but also sort the x-axis by the murder rate

#We use the geom_col() function to generate a bar chart
#We use the reorder() function to sort the dataframe in an ascending order.

i <- ggplot(mergedDataframe,aes(x=reorder(stateName,Murder), y=Murder)) + geom_col()+ theme(axis.text.x=element_text(angle=90,hjust=1))+ ggtitle("Total Murders")

# 11)	 Generate a third bar chart, the same as the previous step, but also showing percentOver18 as the color of the bar

#We use the geom_col() function to generate a bar chart.
#We use the reorder() function to sort the dataframe in an ascending order.

j <- ggplot(mergedDataframe,aes(x=reorder(stateName,Murder), y=Murder))+geom_col(aes(fill=percentOver18)) +theme(axis.text.x=element_text(angle=90,hjust=1))+ ggtitle("Total Murders")
