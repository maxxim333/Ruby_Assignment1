# Ruby_Assignment1

ASSIGNMENT:

There are three tab-delimited data files:
1. seed_stock_data.tsv
2. gene_information.tsv
3. cross_data.tsv

#1 contains information about seeds in your genebank
#2 contains information about genes
#3 contains information about the crosses you have made

Each file begins with a heading line, followed by lines of data


************ YOUR TASKS **************
Your task is to use Object-oriented programming to achieve two things:
1) "simulate" planting 7 grams of seeds from each of the records in the seed stock genebank
then you should update the genebank information to show the new quantity of seeds
that remain after a planting. The new state of the genebank
should be printed to a new file, using exactly the same format as the
original file seed_stock_data.tsv

-- if the amount of seed is reduced to zero or less than zero, then
a friendly warning message should appear on the screen. The amount
of seed left in the gene bank is, of course, not LESS than zero guiño


2) process the information in cross_data.tsv and determine which genes are
genetically-linked. To achieve this, you will have to do a Chi-square test
on the F2 cross data. If you discover genes that are linked, this information
should be added as a property of each of the genes (they are both linked to each
other).


***************************************

Hints:
*** You will need to create 3 Objects:
1. A Class for the Gene
2. A Class for the SeedStock
3. A Class for the Hybrid Cross

*** the values of some Object Properties will be other Objects

*** the seed_stock ID is the key to link seed_stock_data->cross_data

*** the GeneID is the key to link gene_information->seed_stock_data


-------------------

The output of your program should look like this:
$ ruby process_database.rb  gene_information.tsv  seed_stock_data.tsv  cross_data.tsv  new_stock_file.tsv
WARNING: we have run out of Seed Stock B52
WARNING: we have run out of Seed Stock A51
Recording: ufo is genetically linked to pi with chisquare score 32.2794279427943

Final Report:
ufo is linked to pi
pi is linked to ufo

-------------------
Your program should also create the tab-delimited updated new_stock_file.tsv that contains:
Seed_Stock Mutant_Gene_ID Last_Planted Storage Grams_Remaining
B52 AT5G20240 8/2/2015 cama16 0
A348 AT4G36920 8/2/2015 cama25 5
B3334 AT3G54340 8/2/2015 cama18 15
A334 AT1G69120 8/2/2015 cama2 21
A51 AT1G30950 8/2/2015 cama25 0
