Feature: gear cenetric bicycle data

  Scenario: gear ratio calculations
    Given a gearset has a chainring with 52 teeth and a cog with 11 teeth
    When I ask for the gear ratio
    Then I should get a gear ratio of about 4.73