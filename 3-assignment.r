#C.M. Gienger
#R Lecture 3: Practice exercises for subsetting and manipulating data

library(dplyr)

#First load a dataset to work with;
data(mtcars) # where does this data come from? Is it magic?

##################  HOMEWORK  #################################
# Assign each answer to a new object (e.g. quest4, quest5, etc.). Try to use good coding practice
# such as breaking lines after the pipe operator (%>%) to give a sequence of readable steps. 


#1. How you you programmatically (i.e. using code) view the 'mtcars' dataset?
quest_1 <-

#2. How do you determine the different types of data contained in mtcars?
quest_2 <-

#3. Assign the mtcars dataset to a new object.
quest_3 <-
  
# Using our knowledge of dplyr, answer the following:
# I recommend using 'pipes' where possible (but not required), as they are more intuitive.
  
#4. What is the mean and standard deviation of horsepower (hp)
#for each group of cars, as measured by their number of cylinders (cyl)?
quest_4 <-
  
#5. Of the cars having 8 cylinders, which six have the most horsepower? (show just the top 6) 
quest_5 <-
  
#6. Produce a table of fuel efficiency (mpg) for 4-cylinder cars ordered best to worst.
quest_6 <-
  
#7. List the cars that have fuel efficiency (mpg) greater than or equal to 21 miles per gallon and 
# horsepower (hp) greater than 100.
quest_7 <-  

#8. What are the top 10 best cars in their ratio of horsepower (hp) to fuel-efficiency (mpg)?
  #hint: you have to make a new variable that is a calculation of hp to mpg
quest_8 <-   

#9. List all the Merc cars (Mercury) in order of increasing fuel efficiency (mpg).
quest_9 <-  

#10. Give the mpg, disp, and wt for the car with the highest horse power (hp).
quest_10 <-  
###############################################################
#Turn in a properly formatted script file for your answers. I am going to run the 
#entire script as one chunk of code, and if it doesn't work, I won't grade it. 
#You need to make it bullet-proof for your 'collaborator' (me). 
#Review Beckerman Section 3.3.5 for reference.
#OK to collaborate with others, but don't let people sponge off your hard work.
#Due one week from today (before class) via D2L Assignments submission box.