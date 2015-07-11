class Table
  attr_reader :num_legs

  def initialize(num_legs)
    if num_legs > 0
      @num_legs = num_legs
    elsif num_legs == 0
      raise "I just hate 0"
    else
      raise ArgumentError, "The number of legs must be greater than zero"
    end
  end
end

def create_table(legs)
  begin
  t = Table.new legs
  p t
rescue ArgumentError => sauce
  puts "You: #{sauce.message}"
    puts "Me: So sorry"
  rescue => sauce#you can reuse the same variable name because they are in differnt blocks, and name it anything
    puts "What the fuck"
    puts sauce.backtrace#will show what line and what method the error is in, very useful
  end
  puts "I'm done"
end

create_table(-1)
