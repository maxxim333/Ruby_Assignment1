class Seedstock
  

  attr_accessor :seed_stock 
  attr_accessor :mutant_gene
  attr_accessor :last_planted
  attr_accessor :storage
  attr_accessor :grams_remaining
  

  
  def initialize (thisseed = "Some seed", thismutant = "A mutant", planted = "00000000", stored="somewhere", remain="a quantity") # this last one is an empty list # get a name from the "new" call, or set a default
    @seed_stock = thisseed
    @mutant_gene = thismutant
    @last_planted = planted
    @storage=stored
    @grams_remaining = remain
    
  end

def seed_stock
    @seed_stock
  end
  
  def mutant_gene
    @mutant_gene
  end
  
  def last_planted
    @last_planted
  end
  
  def storage
    @storage
  end
  
  def grams_remaining
    @grams_remaining
  end

  def plantseed
    if @grams_remaining > 7
       @grams_remaining -= 7
    else
      puts "WARNING: No seeds remaining in stock " + @seed_stock
      @grams_remaining = 0
    end
  end
  
  def writeseed(file)
    file.puts(@seed_stock + "\t" + @mutant_gene + "\t" + @last_planted + "\t" + @storage +"\t" + @grams_remaining.to_s)
  end
end