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

  Scenario Outline: gear inches calculations
    Given a wheel with a <rim size> inch rim and a <tire size> tire
    And a gearset has a chainring with <chainring> teeth and a cog with <cog> teeth
    When I ask for the gear inches
    Then I should get a gear inches of about <gear inches>

    Examples:
      | chainring | cog | rim size | tire size | gear inches |
      | 52        | 11  | 26       | 1.5       | 137.0909    |
