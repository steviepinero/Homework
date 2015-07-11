
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

  def stump(voters)
    voters.each do |v|
      v.listen(party)
    end
  end
end
