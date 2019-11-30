library(tidyverse)
library(gapminder)
library(gganimate)
library(plotly)

gapminder_2007 <- gapminder %>% 
  filter(year == 2007)

ggplot(data = gapminder_2007,
       mapping = aes(x = gdpPercap, y = lifeExp, color = continent, size = pop)) +
  geom_point() +
  scale_x_log10()

ggplot(data = gapminder,
       mapping = aes(x = gdpPercap, y = lifeExp, color = continent, size = pop)) +
  geom_point() +
  scale_x_log10()

ggplot(data = gapminder,
       mapping = aes(x = gdpPercap, y = lifeExp, color = continent, size = pop)) +
  geom_point() +
  scale_x_log10() +
  transition_time(year) +
  ease_aes('linear')
