require './Seedstock.rb'
require './crossdata.rb'
require './geneinfo'
require 'csv'

#Parsing tsv into a variable and transpose it so columns become rows
parsed_file = CSV.read("/home/osboxes/upm/Bioinfo_ProgrammingChallenges/Assignment1/seed_stock_data.tsv", { :col_sep => "\t" })
transposed = parsed_file.transpose

#Separate the result in many arrays, each containing data of one stock
#Dropping the header
first = transposed[0]
one=first.drop(1)

second = transposed[1]
two=second.drop(1)

third = transposed[2]
three=third.drop(1)

fourth = transposed[3]
four=fourth.drop(1)

fifth = transposed[4]
five=fifth.drop(1)

#Create the information of each seed
seed1 = Seedstock.new(one[0],two[0], three[0], four[0], five[0].to_i)
seed2 = Seedstock.new(one[1],two[1], three[1], four[1], five[1].to_i)
seed3 = Seedstock.new(one[2],two[2], three[2], four[2], five[2].to_i)
seed4 = Seedstock.new(one[3],two[3], three[3], four[3], five[3].to_i)
seed5 = Seedstock.new(one[4],two[4], three[4], four[4], five[4].to_i)

#Planting 7 grams of seeds
seed1.plantseed
seed1.plantseed
seed3.plantseed
seed4.plantseed
seed5.plantseed

#Updating database 
file = File.open("updated_seed_stock.tsv", "w")
file.puts("Seed_Stock\tMutant_Gene_ID\tLast_Planted\tStorage\tGrams_Remaining")
seed1.writeseed(file)
seed2.writeseed(file)
seed3.writeseed(file)
seed4.writeseed(file)
seed5.writeseed(file)
file.close

#Parsing the information of crosses in the similar fashion as before
parsed_file = CSV.read("/home/osboxes/upm/Bioinfo_ProgrammingChallenges/Assignment1/cross_data.tsv", { :col_sep => "\t" })
parsed_file[1]
transposed = parsed_file.transpose

first = transposed[0]
one=first.drop(1)

second = transposed[1]
two=second.drop(1)

third = transposed[2]
three=third.drop(1)

fourth = transposed[3]
four=fourth.drop(1)

fifth = transposed[4]
five=fifth.drop(1)

sixth = transposed[5]
six=sixth.drop(1)

cross1 = Crossdata.new(one[0],two[0], three[0].to_i, four[0].to_i, five[0].to_i, six[0].to_i)
cross2 = Crossdata.new(one[1],two[1], three[1].to_i, four[1].to_i, five[1].to_i, six[1].to_i)
cross3 = Crossdata.new(one[2],two[2], three[2].to_i, four[2].to_i, five[2].to_i, six[2].to_i)
cross4 = Crossdata.new(one[3],two[3], three[3].to_i, four[3].to_i, five[3].to_i, six[3].to_i)
cross5 = Crossdata.new(one[4],two[4], three[4].to_i, four[4].to_i, five[4].to_i, six[4].to_i)

#Calculating the Chi-square values
cross1.chi_value
cross2.chi_value
cross3.chi_value
cross4.chi_value

parsed_file = CSV.read("/home/osboxes/upm/Bioinfo_ProgrammingChallenges/Assignment1/gene_information.tsv", { :col_sep => "\t" })

transposed = parsed_file.transpose

first = transposed[0]
one=first.drop(1)

second = transposed[1]
two=second.drop(1)

third = transposed[2]
three=third.drop(1)



gene1 = Geneinfo.new(one[0],two[0], three[0])
gene2 = Geneinfo.new(one[1],two[1], three[1])
gene3 = Geneinfo.new(one[2],two[2], three[2])
gene4 = Geneinfo.new(one[3],two[3], three[3])
gene5 = Geneinfo.new(one[4],two[4], three[4])

