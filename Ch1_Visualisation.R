library(tidyverse)

mpg
ggplot(data = mpg) +
  geom_point(mapping =aes(x = displ, y = hwy))
ggplot(data = mpg)
?mpg

ggplot(data = mpg) +
  geom_point(mapping =aes(x = hwy, y = cyl))

ggplot(data = mpg) +
  geom_point(mapping =aes(x = class, y = drv))

ggplot(data = mpg) +
  geom_point(mapping =aes(x = displ, y = hwy, colour = class))

ggplot(data = mpg) +
  geom_point(mapping =aes(x = displ, y = hwy, size = class))

ggplot(data = mpg) +
  geom_point(mapping =aes(x = displ, y = hwy, alpha = class))

ggplot(data = mpg) +
  geom_point(mapping =aes(x = displ, y = hwy, shape = class))

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy), colour = 'blue')

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, colour = 'blue'))

ggplot(data = mpg) +
  geom_point(mapping =aes(x = displ, y = hwy, shape = class, colour = class))

ggplot(data = mpg) +
  geom_point(mapping =aes(x = displ, y = hwy, colour = displ))

?geom_point

ggplot(data = mpg) +
  geom_point(mapping =aes(x = displ, y = hwy, stroke = displ))

ggplot(data = mpg) +
  geom_point(mapping =aes(x = displ, y = hwy, colour = displ < 5))

#Facets

ggplot (data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_wrap(~ class, nrow = 2)

ggplot (data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(drv ~ cyl)

ggplot (data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(. ~ cyl)

#Exercises
#1
ggplot (data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(. ~ cty)
#2
ggplot (data = mpg) +
  geom_point(mapping = aes(x = drv, y = cyl))
#3
ggplot (data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(. ~ cyl)

ggplot (data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(drv ~ .)

#5
?facet_wrap
?facet_grid
