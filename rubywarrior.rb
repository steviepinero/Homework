
class Player

  def play_turn(warrior)

    @max_health = 20
    if @health == nil then @health = @max_health end

    is_taking_damage?(warrior)
    actions(warrior)
    record_health(warrior)

  end

  def is_taking_damage?(warrior)
    #checks current health vs previous health
    @under_attack = @health > warrior.health
  end

  def actions(warrior)
    if @under_attack == true and warrior.feel.empty? == true
      warrior.walk!:backward
    elsif @under_attack == true and warrior.feel.empty? == false
      warrior.attack!
    elsif @under_attack == false and warrior.feel.empty? == true and warrior.health == @max_health
      warrior.walk!
    elsif @under_attack == false and warrior.feel.empty? == false and warrior.health == @max_health
      warrior.attack!
    elsif @under_attack == false and warrior.health < @max_health
      warrior.rest!
    end
  end

  def record_health(warrior)
    @health = warrior.health
  end

end
