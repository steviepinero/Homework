
class Voter
  attr_accessor :voter_name, :voter_viewpoints

  def initialize(voter_name, voter_viewpoints)
    @voter_name = voter_name
    @voter_viewpoints = voter_viewpoints
  end

  def listen(politician)
    puts "#{candidate_name}: #{politician.candidate_name} sucks!"
  end
end



class Candidate < Voter
  attr_accessor :candidate_party, :candidate_name, :counter

  def initialize(candidate_name, candidate_party)
    @candidate_name = candidate_name
    @candidate_party = candidate_party
    @counter = 1
  end



  # def politics
  #   # There is actually a range of politics within
  #   # each party, so this isn't so cut-and-dry.
  #   if party == "Republican"
  #     "Conservative"
  #   else
  #     "Progressive"
  #   end
  # end


  end

  def speech
   stats
   end


   def stats
     case @candidate_party
     when "Republican"
       if voter.voter_viewpoints.include?("Libertarian")
         if rand > 0.1
           true
         else
           false
         end
       elsif voter.voter_viewpoints.include?("Independant")
         if rand > 0.50
           true
         else
           false
         end
       elsif voter.voter_viewpoints.include?("Progressive")
         if rand > 0.75
         true
       else
         false
       end
       if rand > 0.90
         true
       else
         false
       end
     end
   when "Democrat"
     if voter.voter_viewpoints.include?("Libertarian")
       if rand < 0.1
         true
       else
         false
       end
     elsif voter.voter_viewpoints.include?("Conservative")
       if rand < 0.25
         true
       else
         false
       end
     elsif voter.voter_viewpoints.include?("Progressive")
       if rand < 0.75
         true
       else
         false
       end
       else
         if rand < 0.90
           true
         else
           false
         end
       end
     end
   end
