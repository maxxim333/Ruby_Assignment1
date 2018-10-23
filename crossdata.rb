require './Seedstock.rb'
require './geneinfo.rb'

class Crossdata 

  attr_accessor :parent1
  attr_accessor :parent2
  attr_accessor :f2wild
  attr_accessor :f2p1
  attr_accessor :f2p2
  attr_accessor :f2p1p2
  attr_accessor :linked
  
  def initialize (thisparent = "A parent", thisotherparent = "A parent", f2wt = "Something", f2par1="Something", f2par2="Something", f2both ="Something", link=false)
    @parent1 = thisparent
    @parent2 = thisotherparent
    @f2wild = f2wt
    @f2p1=f2par1
    @f2p2 = f2par2
    @f2p1p2 = f2both
    @linked = link
  end
    
  
  def chi_value
    total_value = @f2wild + @f2p1 + @f2p2 + @f2p1p2
    
    expectedWT = 9/16.0*(total_value)
    int_chisquare1=(@f2wild.to_f-expectedWT.to_f)**2 / expectedWT.to_f
    
    expectedP1 = 3/16.0*(total_value)
    int_chisquare2=(@f2p1.to_f-expectedP1.to_f)**2 / expectedP1.to_f
    
    expectedP2 = 3/16.0*(total_value)
    int_chisquare3=(@f2p2.to_f-expectedP2.to_f)**2 / expectedP2.to_f
    
    expectedP1P2 = 1/16.0*(total_value)
    int_chisquare4=(@f2p1p2.to_f-expectedP1P2.to_f)**2 / expectedP1P2.to_f
    
    chivalue = int_chisquare1 + int_chisquare2 + int_chisquare3 +int_chisquare4
    
        
    if chivalue > 7.815
      @linked = true
      puts "\n" + @parent1 + " and " +  @parent2 + " are linked\n\n"
      
      puts "Final report:\n" + @parent1 + " is linked to " +  @parent2
      puts "\n" + @parent2 + " is linked to " +  @parent1

    end
  end



end
