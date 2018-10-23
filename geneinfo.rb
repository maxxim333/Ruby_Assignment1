class Geneinfo

  attr_accessor :gene_id 
  attr_accessor :gene_name
  attr_accessor :mutant_phenotype
  
  
  def initialize (thisid = "Some ID", thisname = "A name", phenotype = "Somephenotype")
    @gene_id = thisid
    @gene_name = thisname
    @mutant_phenotype = phenotype
  end
  
  
end



