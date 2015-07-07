# Don't modify the Person class
class Person
  attr_accessor :name, :age, :gender, :years_language_experience, :favorite_foods

  def initialize(name:, age:, gender:, years_language_experience:{}, favorite_foods:[])
    @name = name
    @age = age
    @gender = gender
    @years_language_experience = years_language_experience
    @favorite_foods = favorite_foods
  end
end


class People
  def initialize(people_array)
    @people = people_array
  end

  def ages_sum
    @people.reduce(0) { |sum, person| sum += person.age }
  end

  def average_age
    ages_sum / @people.count
  end

  def total_years_programming_experience_for_all_languages
    @people.reduce(0) do |total, person|
      person.years_language_experience.each do |key,value|
        total += value
      end
      total
    end
  end

  def favorite_food_frequency
    @people.each_with_object(Hash.new(0)) do |person, result|
      person.favorite_foods.each do |food|
        result[food] += 1
      end
    end
  end

  def total_combined_years_language_experience(language)
    @people.reduce(0) do |total, person|
      person.years_language_experience.each do |key,value|
        total += value if key == language
      end
      total
    end
  end

  private

  def people
    @people
  end

end
