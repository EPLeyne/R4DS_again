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

#Geometric Objects

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy))

ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy))

ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy, linetype = drv))

ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy, group = drv))

ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy, colour = drv), show.legend = FALSE) 

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  geom_smooth(mapping = aes(x = displ, y = hwy))

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point() +
  geom_smooth()

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(mapping = aes(colour = class)) +
  geom_smooth()

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(mapping = aes(colour = class)) +
  geom_smooth(data = filter(mpg, class == "subcompact"),
              se = FALSE)

#Exercises

#2
ggplot(data = mpg, mapping = aes(x = displ, y = hwy, colour = drv)) +
  geom_point() +
  geom_smooth(se = FALSE)

#6
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point() +
  geom_smooth(se = FALSE)

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point() +
  geom_smooth(mapping = aes(group = drv), se = FALSE)

ggplot(data = mpg, mapping = aes(x = displ, y = hwy,colour = drv)) +
  geom_point() +
  geom_smooth(mapping = aes(group = drv), se = FALSE)

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(mapping = aes(colour = drv)) +
  geom_smooth(se = FALSE)

ggplot(data = mpg, mapping = aes(x = displ, y = hwy,colour = drv)) +
  geom_point() +
  geom_smooth(mapping = aes(linetype = drv), se = FALSE)

ggplot(data = mpg, mapping = aes(x = displ, y = hwy,colour = drv)) +
  geom_point()
  