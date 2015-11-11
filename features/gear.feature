Feature: gear cenetric bicycle data

  Scenario Outline: gear ratio calculations
    Given a gearset has a chainring with <chainring> teeth and a cog with <cog> teeth
    When I ask for the gear ratio
    Then I should get a gear ratio of about <ratio>

    Examples:
      | chainring | cog | ratio  |
      | 52        | 11  | 4.73   |
      | 30        | 27  | 1.1111 |
      | 40        | 10  | 4      |