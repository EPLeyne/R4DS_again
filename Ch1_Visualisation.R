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

#Statistical Transformations

ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut))

?geom_bar

ggplot(data = diamonds) +
  stat_count(mapping = aes(x = cut))

demo <- tribble(
  ~a, ~b,
  "bar1", 20,
  "bar2", 30,
  "bar3", 40)

ggplot(data = demo) +
  geom_bar(
    mapping = aes(x = a, y = b), stat = "identity"
  )

ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, y = ..prop.., group = 1))

ggplot(data = diamonds) +
  stat_summary(mapping = aes(x = cut, y = depth),
           fun.ymin = min,
           fun.ymax = max,
           fun.y = median)

#1
?stat_summary
?geom_pointrange

#Because the default of geom_pointrange is identity we have to pre-calculate the stats
diamonds %>% group_by(cut) %>% summarize(median_y = median(depth),
                                         min_y = min(depth),
                                         max_y = max(depth)) %>%
  ggplot() +
  geom_pointrange(mapping = aes(x = cut, y = median_y, ymin = min_y, ymax = max_y)) +
  labs(y = 'depth')

#2
?geom_col

#4
?stat_smooth


#Position Adjustments

ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, colour = cut))

ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, fill = cut))

ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, fill = clarity))

ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, fill = clarity))

ggplot(data = diamonds, mapping = aes(x = cut, fill = clarity)) +
  geom_bar(alpha = 1/5, position = "identity")
ggplot(data = diamonds, mapping = aes(x = cut, fill = clarity)) +
  geom_bar(alpha = NA, position = "identity")

ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, fill = clarity), position = "fill")

ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, fill = clarity), position = 'dodge')

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy),
             position = 'jitter')

#Exercises p31
#2
?geom_jitter
