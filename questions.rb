# Questions/Validations
#     - Will contain all questions and correct answers
#       * Methods; 
#         1. questions
#         2. answers

#rand - generates random number

class Questions

  def generate_random_numbers

    first_random_number = rand(1...20)
    second_random_number = rand(1...20)

    return first_random_number, second_random_number
  end

  def validate_answers(result, answer)
    if (result == answer)
      true
    else
      false
    end
  end

end
