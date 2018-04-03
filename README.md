# gnomeviz18.github.io
## Task 1
This is the Irmasari Hafidz's documentation for the task JKU Junior Researcher Challenge 2018. 

## Task 2
Task 2 goal is to create a browser-based JavaScript tool for interactive visualization of mutations in cancer. 

### Retrieve:
1. Retrieve data from an API provided by the Data Coordination Center of the International Cancer Genomics Consortium (http://dcc.icgc.org)
2. Should obtain mutation data for the Glioblastoma multiforme project (GBM-US) from the mutations API endpoint of the ICGC Data Coordination Center
3. Retrieve: 
 * mutation ids, 
 * mutation details, 
 * the type of the mutation, 
 * chromosome and 
 * start and end position for 100 mutations of the GBM-US project. 
 
 ## Two Visualizations
 The UI for the web browser should give information about:
 
 1. Type Overview: shows the **number** of mutations for **each mutation type**
 2. Chromosome Overview: shows the distribution of mutations across the 22 human autosome pairs plus the two sex chromosomes
 
 ## About the dataset
 The dataset is in JSON file. The JSON file is extracted from this link https://dcc.icgc.org/api/v1/projects/GBM-US/mutations?field=id,mutation,type,chromosome,start,end&size=100&order=desc
 
 Here it is the example of the dataset:
```
0	
id	"MU589117"
type	"single base substitution"
chromosome	"10"
start	38654432
end	38654432
mutation	"A>G"
study	[]
1	
id	"MU588573"
type	"single base substitution"
chromosome	"7"
start	55221822
end	55221822
mutation	"C>T"
study	[]
2	
id	"MU589341"
type	"single base substitution"
chromosome	"7"
start	55233043
end	55233043
mutation	"G>T"
study	[]
```
