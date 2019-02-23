# Learning About dplyr package
gapminder = read.csv("data/gapminder_data.csv")

# subset of gapminder dataset
gapminder[gapminder$continent=="Africa",]

# find highest GDP in Asia
asia = gapminder[gapminder$continent=="Asia",]
high = asia[asia$gdpPercap>300000]


# subset in base R
mean(gapminder[gapminder$continent=="Africa","gdpPerCap"])


# load our package
library(dplyr)

yr_ctry_gdp_africa = gapminder %<%
  filter(continent=="Africa") %>%
  select(year,country,gdpPercap)

gdp_by_country = gapminder %>% 
  group_by(country) %>%
  filter(gdpPercap > 300000)

gapminder %>%
  filter(continent=="Asia") %>%
  group_by(country)

gapminder %>%
  filter(continent=="Asia") %>%
  filter(gdpPercap > 100000)


# Finding Highest and Lowest Mean Life Expectancy by Country
lifeexp_by_country = gapminder %>%
  group_by(country) %>%
  summarize(mean_life = mean(lifeExp)) 
lifeexp_by_country %>%
  filter(mean_life == min(mean_life))
lifeexp_by_country %>%
  filter(mean_life == max(mean_life)
         
         

# Perform more than one function inside a summarize
gapminder %>%
  group_by(continent) %>%
  summarise(
    mean_life = mean(lifeExp), 
    se_life = sd(lifeExp)/sqrt(n())
  )
      
# use count to find the number of rows
gapminder %>%
  filter(year == 2002) %>%
  count(continent)

# using mutate

gdp_pop_summary = gapminder %>%
  mutate(gdb_billions = gdpPercap*pop/10^9) %>%
  group_by(continent,year) %>%
  summarise(mean_gdp_bill = mean(gdp_billions))
head(gdp_pop_summary)
