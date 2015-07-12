
class Voter
  attr_accessor :voter_name, :voter_viewpoints

  def initialize(voter_name, voter_viewpoints)
    @voter_name = voter_name
    @voter_viewpoints = voter_viewpoints
  end

  def listen(party)

  end
end



class Candidate < Voter
  attr_accessor :candidate_party, :candidate_name

  def initialize(candidate_name, candidate_party)
    @candidate_name = candidate_name
    @candidate_party = candidate_party
  end



  def politics
    # There is actually a range of politics within
    # each party, so this isn't so cut-and-dry.
    if party == "Republican"
      "Conservative"
    else
      "Progressive"
    end
  end


  end

  def speach
    puts "Vote for me! If you want Free everything. \n Vote for me if you love food. \n Vote for me if you hate Mosquitos. \n Vote for me!"
  end
