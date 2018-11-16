require ('rspec')
require('pry')
require('allergies')

describe(".Score") do
  it ("it returns an allergen when the user enters the exact score") do
    score = Score.new(18)
    expect(score.find_allergen()).to(eq(["tomatoes", "peanuts"]))
  end

  it ("it returns an allergen when the user enters the exact score") do
    score = Score.new(58)
    expect(score.find_allergen()).to(eq(["chocolate", "tomatoes", "strawberries", "peanuts"]))
  end

  it ("it returns an allergen when the user enters the exact score") do
    score = Score.new(255)
    expect(score.find_allergen()).to(eq(["cats", "pollen", "chocolate", "tomatoes", "strawberries", "shellfish", "peanuts", "eggs"]))
  end
end
