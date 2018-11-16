class Score
  def initialize(score)
    @score = score
  end

  def find_allergen

  @allergen = Hash.new()
  @allergen.store("eggs", 1)
  @allergen.store("peanuts", 2)
  @allergen.store("shellfish", 4)
  @allergen.store("strawberries", 8)
  @allergen.store("tomatoes", 16)
  @allergen.store("chocolate", 32)
  @allergen.store("pollen", 64)
  @allergen.store("cats", 128)

  @inverse_hash = @allergen.invert()
  @list_array = []

  while @score > 0
    @array = []

    @array = @inverse_hash.keys()
    @array.reverse!
    @array.select!{ |a| a <= @score}
    @list_array.push(@allergen.key(@array[0]))

    @score -= @array[0]
  end
  @list_array
end
end
