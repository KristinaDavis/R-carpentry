# PlotExample_ggplot2
# software carptentry workshop
# Kristina Davis
# Feb 22 2019

# open ggplot library (import statements)
library(ggplot2)

# Read in Data
gapminder = read.csv("data/gapminder_data.csv",header = TRUE)

# data subsetting
gapminder[1,1]

# look at row 1
gapminder[1,]

# look at row 700
gapminder[700,]

# preview top few lines
head(gapminder)

#preview last few files
tail(gapminder)

# preview middle few lines
gapminder[900:910,]

# call ggplot to create new plot
# GLOBAL option, appliews to ALL
# aes = aesthetic properties
#  x and y locations
#   looks for header names, nice!
# geom- this layer tells how we want to visually represent data
#  geom_point = scatterplot
cnt = factor(gapminder[continent])
ggplot(data=gapminder, aes(x=gdpPercap, y=lifeExp, by=country, col=continent))+ geom_point()

# add column of countries as characters, instead of factors
countries_chars = as.character(gapminder$country)
gap2 = cbind(gapminder,countries_chars)

# Logical of which countries are high GDP
whichHighGDP = gapminder$gdpPercap>30000
high = gapminder$country[whichHighGDP==TRUE]
str(high)
ggplot(data = gapminder$country[Kuwait])

ggplot(data=gapminder, aes(x=year, y=lifeExp, by=country, col=continent))+geom_line(color="black")+ geom_point()

# Now Overplot Stats
# use scale function
ggplot(data=gapminder, aes(x=gdpPercap, y=lifeExp, color=continent)) +
  geom_point(alpha=0.5, size=1.5, shape=8) + 
  scale_x_log10() + 
  geom_smooth(method="lm")

       