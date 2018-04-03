The task is done in R from the file Rjsonio.R

## Visualization 1: Type of Mutation Type

JSON dataset in data frame  
```
> str(gnomeDF)
'data.frame':	100 obs. of  6 variables:
 $ id           : chr  "MU589117" "MU588573" "MU589341" "MU866" ...
 $ mutation_type: chr  "single base substitution" "single base substitution" "single base substitution" "single base substitution" ...
 $ chromosome   : chr  "10" "7" "7" "2" ...
 $ start_pos    : chr  "38654432" "55221822" "55233043" "209113112" ...
 $ end_pos      : chr  "38654432" "55221822" "55233043" "209113112" ...
 $ mutation     : chr  "A>G" "C>T" "G>T" "C>T" ...
```

Creating 1st visualization using ggplot2
```
# creating visualizations
library(plotly)
library(ggplot2)
gmutationType <- ggplot(gnomeDF, aes(mutation_type))
g + geom_bar(aes(fill=mutation_type))
```

![alt text][logo]

[logo]: https://github.com/irhafidz/gnomeviz18.github.io/blob/master/mutationType.jpeg "The Type of Mutation"

```
> mutationtypecount <- count(gnomeDF$mutation_type)
> mutationtypecount
                         x freq
1      deletion of <=200bp    5
2     insertion of <=200bp    3
3 single base substitution   92
```


## Visualization 2: Distribution of Mutation accross the Type of Chromosome

Creating 2nd visualization using ggplot2
```
# creating visualizations
library(plotly)
library(ggplot2)
gchromosome <- ggplot(gnomeDF, aes(chromosome))
g + geom_bar(aes(fill=chromosome))
```

![alt text][logo]

[logo]: https://github.com/irhafidz/gnomeviz18.github.io/blob/master/TypeChromosome.jpeg "The of Chromosome"


```
> chromosomecount <- count(gnomeDF$chromosome)
> chromosomecount
    x freq
1   1   10
2  10    8
3  12    2
4  13    3
5  15    7
6  16    5
7  17   13
8  18    2
9  19    8
10  2    8
11 20    2
12 21    1
13 22    1
14  3    5
15  4    2
16  5    3
17  6    1
18  7   16
19  9    2
20  X    1
```