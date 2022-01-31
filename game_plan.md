Classes

1. The actual game (class Game)
    - Will contain the loop of the game and players turn information
      * Holds all prompts for different activities/actions
      * Validation to find out if players answers is correct or not
      * Methods/functions to include:
        1. beginning_prompt
        2. turn_prompt
        3. validation_propmt
        4. win_propmt

2. Players
    - Will contain the players input
      * Players name with their number of lives
      * Access the validation_prompt method - will show if the answer if   correct or not
      * Methods/functions to include:
        1. remaining_lives
        2. turn

3. Validations
    - Will contain all questions and correct answers
      * Validate the players answer
      * Methods; 
        1. questions
        2. answers
        