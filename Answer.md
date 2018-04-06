The task is done in R from the file Rjsonio.R for the full version.

First, download the JSON dataset:
```
library(RJSONIO)

gnomeraw<-fromJSON("https://dcc.icgc.org/api/v1/projects/GBM-US/mutations?field=id,mutation,type,chromosome,start,end&size=100&order=desc")
gnome<-gnomeraw[['hits']]
```

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
1. Count the type of each mutation
2.



1. Counting the type of each mutation 
```
# creating visualizations
library(plotly)
library(ggplot2)
gchromosome <- ggplot(gnomeDF, aes(chromosome))
g + geom_bar(aes(fill=chromosome))
```

![alt text][chrom]

[chrom]: https://github.com/irhafidz/gnomeviz18.github.io/blob/master/TypeChromosome.jpeg "Distribution of Mutation accross the Type of Chromosome"

2. Counting each type of chromosome accross the type of mutation

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
3. Counting each individual type of chromosome

```
gchromosome <- ggplot(gnomeDF, aes(chromosome)) + geom_bar(aes(fill=chromosome))
gchromosome
```
![alt text][chrom2]

[chrom2]: https://github.com/irhafidz/gnomeviz18.github.io/blob/master/countChromosome.jpeg

4. Counting the type of mutation accross the mutation id

```
gmutation2 <- ggplot(gnomeDF, aes(mutation)) + geom_bar(aes(fill=id))
gmutation2
```

![alt text][chrom3]

[chrom3]: https://github.com/irhafidz/gnomeviz18.github.io/blob/9c570543c6e6a85b11ab9a3947d54545be4d7a27/Rplot02.jpeg
