# Questions/Validations
#     - Will contain the generated random numbers and validation
#       * Methods; 
#         1. generate random numbers
#         2. validate answers

#rand - generates random number

class Questions

  def self.first_random_number
    @first_random_number = rand(1...20)
  end

  def self.second_random_number
    @second_random_number = rand(1...20)
  end

  def self.validate_answers(input)
    input.to_i == (@first_random_number + @second_random_number)
  end

end
