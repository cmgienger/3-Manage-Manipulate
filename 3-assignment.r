#C.M. Gienger
#R Lecture 3: Practice excercises for subsetting and manipulating data

library(dplyr)
library(data.table) #might need to install if not on your computer

#First load a dataset to work with;

data(mtcars) # where does this data come from? Is it magic?
# for reference:  library(help = "datasets")

#fix problem with car names not being in a dataframe column
mtcar_data <- data.table(mtcars, keep.rownames = TRUE)
mtcar_data <- rename(mtcar_data, name = rn)
mtcar_data #shows dataframe with the car names in first column

##################  HOMEWORK  #################################
#1. What are at least 2 different ways to view the 'mtcars' dataset?

#2. How do you determine the different types of data contained in mtcars?

#3. Assign the mtcars dataset to a new object.

# Using our knowledge of dplyr, answer the following:
# I recommend usings 'pipes' where possible (but not required), as they are more intuitive.
# Assign each answer to a new object (e.g. quest4, quest5, etc.)

#4. What is the mean and standard deviation of horsepower (hp)
#for each group of cars, as measured by their number of cylinders (cyl)?

#5. Of the cars having 8 cylinders, which six have the most horsepower? (show just the top 6) 

#6. Produce a table of fuel efficiency (mpg) for 4-cylinder cars ranked best to worst.

#7. List the cars that have fuel efficiency (mpg) greater than or equal to 21 miles per gallon and 
# horsepower (hp) greater than 100.

#8. What are the top 10 cars in ratio of horsepower (hp) to fuel-efficiency (mpg)?

###############################################################
#Turn in a properly formatted script file for your answers. I am going to run the 
#entire script as one chunk of code, and if it doesn't work, I won't grade it. 
#You need to make it bullet-proof for your 'collaborator' (me). 
#Review Beckerman Section 3.3.5 for reference.
#OK to collaborate with others, but don't let people sponge off your hard work.
#Due one week from today (before class) via D2L Assignments submission box.