#C.M. Gienger
#Code to follow along with R lecture #3 (Beckerman Chapter 3)
library(dplyr)


#Using dplyr
compensation <- read.csv("compensation.csv")
glimpse(compensation) # just checkin’
summary(compensation) #our first check for wonkiness

#select()
names(compensation)
select(compensation, Fruit) # use the Fruit column
select(compensation, -Root) 

#slice()
slice(compensation, 2) #returns data from second row
slice(compensation, 2:10) #returns data from rows 2-10
slice(compensation, c(2, 3, 10)) #returns rows 2, 3, and 10; 	uses a helper function c() to collect the rows.

#filter()
with(compensation, Fruit > 80) # ‘look in this data frame, and do what comes next, and then stop looking’ 
filter(compensation, Fruit > 80) #returns data frame
filter(compensation, Fruit > 80 | Fruit < 20)
lo_hi_fruit <- filter(compensation, Fruit > 80 | Fruit < 20)
# now look at it
lo_hi_fruit

#mutate()
# what does ‘compensation’ look like now?
head(compensation)
#log transform the Fruit variable
compensation <- mutate(compensation, logFruit = log(Fruit)) #makes new transformed column, overwrites 	dataframe
# what does ‘compensation’ look like after the mutate
head(compensation)

#arrange
arrange(compensation, Fruit) #default is ascending
arrange(compensation, Grazing, Fruit) #sorts Grazed group from L-H, then Ungrazed L-H

#You can use multiple dplyr verbs in one line
# Root values from Fruit > 80 subset
select(filter(compensation, Fruit > 80), Root)

#You can use ‘pipes’ to nest functions
# Get Root values from Fruit > 80 subset
compensation %>% filter(Fruit > 80) %>% select(Root)
# use this data---------then do this------then do this

#Summary Stats: Method 1: Nested, No Pipe
summarise(
  group_by(compensation, Grazing),
  meanFruit = mean(Fruit))

#Summary Stats: Method 2: Pipe, No Nesting
compensation %>%
  group_by(Grazing) %>%
  summarise(meanFruit = mean(Fruit))

#Summarizing and Extending Summarization
#Ask for more than one statistic (metric) at a time
compensation %>%
  group_by (Grazing) %>%
  summarise(
    nFruit = n(),	#note empty parenthesis
    meanFruit = mean(Fruit),
    sdFruit = sd(Fruit))

