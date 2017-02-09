@brief-response
Feature: Supplier applies for a brief

Background:
  Given I have a buyer
  Given I have a supplier
    And that supplier is on the digital-outcomes-and-specialists framework
    And that supplier has a user
    And that supplier user is logged in

Scenario: Supplier applies for a digital-specialists brief
  Given that supplier has a service on the digital-specialists lot
  Given I have a live digital-specialists brief
    And I go to that brief page
    And I click 'Apply'
    Then I am on 'Apply for ‘Tea drinker’' page
  When I click 'Start application'
    Then I am on 'When is the earliest the specialist can start work?' page
    And I see 'The buyer needs the specialist to start: 31/12/2016' replayed in the question advice
  When I enter '27/12/17' in the 'availability' field
    And I click 'Continue'
    Then I am on the 'What’s the specialist’s day rate?' page
    And I see '£200' replayed in the question advice
  When I enter '200' in the 'dayRate' field
    And I click 'Continue'
    Then I am on the 'Do you have all the essential skills and experience?' page
  When I choose 'Yes' radio button
    And I click 'Continue'
    Then I am on the 'Give evidence of the essential skills and experience' page
  When I enter 'first evidence' in the 'Boil kettle' field
    And I enter 'second evidence' in the 'Taste tea' field
    And I enter 'third evidence' in the 'Wash mug' field
    And I enter 'fourth evidence' in the 'Dry mug' field
    And I click 'Continue'
    Then I am on the 'Do you have any of the nice-to-have skills or experience?' page
  When I choose 'Yes' radio button for the 'Talk snobbishly about water quality' question
    And I enter 'First nice to have evidence' in the 'Evidence of Talk snobbishly about water quality' field
    And I choose 'Yes' radio button for the 'Sip quietly' question
    And I enter 'Second nice to have evidence' in the 'Evidence of Sip quietly' field
    And I choose 'No' radio button for the 'Provide biscuits' question
    And I click 'Continue'
    Then I am on the 'Email address the buyer should use to contact you' page
  When I enter 'example-email@gov.uk' in the 'respondToEmailAddress' field
    And I click 'Submit application'
    Then I am on the 'Your application for ‘Tea drinker’' page
    And I see the 'Your details' summary table filled with:
      | field               | value                |
      | Day rate            | £200                 |
      | Earliest start date | 27/12/17             |
      | Email address       | example-email@gov.uk |
    And I see the 'Your essential skills and experience' summary table filled with:
      | field       | value           |
      | Boil kettle | first evidence  |
      | Taste tea   | second evidence |
      | Wash mug    | third evidence  |
      | Dry mug     | fourth evidence |
    And I see the 'Your nice-to-have skills and experience' summary table filled with:
      | field                               | value |
      | Talk snobbishly about water quality | First nice to have evidence  |
      | Sip quietly                         | Second nice to have evidence |
      | Provide biscuits                    |                              |

Scenario: Supplier applies for a digital-outcomes brief
  Given that supplier has a service on the digital-outcomes lot
  Given I have a live digital-outcomes brief
    And I go to that brief page
    And I click 'Apply'
    Then I am on 'Apply for ‘Hide and seek ninjas’' page
  When I click 'Start application'
    Then I am on 'When is the earliest the team can start?' page
    And I see 'The buyer needs the team to start: 28/09/2017' replayed in the question advice
  When I enter '09/09/17' in the 'availability' field
    And I click 'Continue'
    Then I am on the 'Do you have all the essential skills and experience?' page
  When I choose 'Yes' radio button
    And I click 'Continue'
    Then I am on the 'Give evidence of the essential skills and experience' page
  When I enter 'I know all the rules' in the 'Understand the rules.' field
    And I enter 'I know the best hiding' in the 'Hide dead good.' field
    And I click 'Continue'
    Then I am on the 'Do you have any of the nice-to-have skills or experience?' page
  When I choose 'Yes' radio button for the 'Be invisible.' question
    And I enter 'You can see right through them.' in the 'Evidence of Be invisible.' field
    And I choose 'No' radio button for the 'Be able to count to 100 really really quickly.' question
    And I choose 'Yes' radio button for the 'Have a nice smile' question
    And I enter 'Takes just over 100 seconds' in the 'Evidence of Have a nice smile' field
    And I click 'Continue'
    Then I am on the 'Email address the buyer should use to contact you' page
  When I enter 'example-email@gov.uk' in the 'respondToEmailAddress' field
    And I click 'Submit application'
    Then I am on the 'Your application for ‘Hide and seek ninjas’' page
    And I see the 'Your details' summary table filled with:
      | field               | value                |
      | Earliest start date | 09/09/17             |
      | Email address       | example-email@gov.uk |
    And I see the 'Your essential skills and experience' summary table filled with:
      | field                 | value                  |
      | Understand the rules. | I know all the rules   |
      | Hide dead good.       | I know the best hiding |
    And I see the 'Your nice-to-have skills and experience' summary table filled with:
      | field                                          | value                           |
      | Be invisible.                                  | You can see right through them. |
      | Be able to count to 100 really really quickly. |                                 |
      | Have a nice smile                              | Takes just over 100 seconds     |

Scenario: Supplier applies for a user-research-participants brief
  Given that supplier has a service on the user-research-participants lot
  Given I have a live user-research-participants brief
    And I go to that brief page
    And I click 'Apply'
    Then I am on 'Apply for ‘I need horses.’' page
  When I click 'Start application'
    Then I am on 'When is the earliest you can recruit participants?' page
    And I see 'The buyer needs participants: January to April' replayed in the question advice
  When I enter '09/09/17' in the 'availability' field
    And I click 'Continue'
    Then I am on the 'Do you have all the essential skills and experience?' page
  When I choose 'Yes' radio button
    And I click 'Continue'
    Then I am on the 'Give evidence of the essential skills and experience' page
  When I enter 'They have the correct number of hooves.' in the 'The horses must have four hooves' field
    And I enter 'So shiny...' in the 'The horses must have lovely coats' field
    And I enter 'All at least 50' in the 'The horses must be many hands tall' field
    And I click 'Continue'
    Then I am on the 'Do you have any of the nice-to-have skills or experience?' page
  When I choose 'No' radio button for the 'Liking sugar lumps' question
    And I choose 'Yes' radio button for the 'Being good at jumping over fences' question
    And I enter 'No jump is too high.' in the 'Evidence of Being good at jumping over fences' field
    And I choose 'Yes' radio button for the 'Saying "Neigh"' question
    And I enter 'NEIGH' in the 'Evidence of Saying "Neigh"' field
    And I click 'Continue'
    Then I am on the 'Email address the buyer should use to contact you' page
  When I enter 'example-email@gov.uk' in the 'respondToEmailAddress' field
    And I click 'Submit application'
    Then I am on the 'Your application for ‘I need horses.’' page
    And I see the 'Your details' summary table filled with:
      | field               | value                |
      | Earliest start date | 09/09/17             |
      | Email address       | example-email@gov.uk |
    And I see the 'Your essential skills and experience' summary table filled with:
      | field                              | value                                   |
      | The horses must have four hooves   | They have the correct number of hooves. |
      | The horses must have lovely coats  | So shiny...                             |
      | The horses must be many hands tall | All at least 50                         |
    And I see the 'Your nice-to-have skills and experience' summary table filled with:
      | field                              | value                |
      | Liking sugar lumps                 |                      |
      | Being good at jumping over fences  | No jump is too high. |
      | Saying "Neigh"                     | NEIGH                |

Scenario: Previous page links are used during response flow and existing data is replayed
  Given that supplier has a service on the digital-specialists lot
    And I have a live digital-specialists brief
    And that supplier has filled in their application but not submitted it
  When I visit the 'Respond to email address' question page for that brief response
    And I click 'Back to previous page' link
  Then I am on 'Do you have any of the nice-to-have skills or experience?' page
    And I see the 'Yes' radio button is checked for the 'Talk snobbishly about water quality' question
    And I see 'First nice to have evidence' as the value of the 'Evidence of Talk snobbishly about water quality' field
    And I see the 'Yes' radio button is checked for the 'Sip quietly' question
    And I see 'Second nice to have evidence' as the value of the 'Evidence of Sip quietly' field
    And I see the 'No' radio button is checked for the 'Provide biscuits' question
    And I do not see the 'Evidence of Provide biscuits' field
  When I click 'Back to previous page' link
  Then I am on 'Give evidence of the essential skills and experience' page
    And I see 'first evidence' as the value of the 'Boil kettle' field
    And I see 'second evidence' as the value of the 'Taste tea' field
    And I see 'third evidence' as the value of the 'Wash mug' field
    And I see 'fourth evidence' as the value of the 'Dry mug' field
  When I click 'Back to previous page' link
  Then I am on 'Do you have all the essential skills and experience?' page
    And I see the 'Yes' radio button is checked
  When I click 'Back to previous page' link
  Then I am on 'What’s the specialist’s day rate?' page
    And I see '200' as the value of the 'dayRate' field
  When I click 'Back to previous page' link
  Then I am on 'When is the earliest the specialist can start work?' page
    And I see '27/12/17' as the value of the 'availability' field
    And I don't see the 'Back to previous page' link

Scenario: Supplier changes their answers before submission
  Given that supplier has a service on the digital-specialists lot
    And I have a live digital-specialists brief
    And that supplier has filled in their application but not submitted it
    And I go to that brief page
    And I click 'Apply'
  Then I am on 'Apply for ‘Tea drinker’' page
  When I click 'Continue application'
  Then I am on 'When is the earliest the specialist can start work?' page
    And I see 'The buyer needs the specialist to start: 31/12/2016' replayed in the question advice
    And I see '27/12/17' as the value of the 'availability' field
  When I enter '28/09/17' in the 'availability' field
    And I click 'Continue'
  Then I am on the 'What’s the specialist’s day rate?' page
    And I see '£200' replayed in the question advice
    And I see '200' as the value of the 'dayRate' field
  When I enter '100' in the 'dayRate' field
    And I click 'Continue'
  Then I am on the 'Do you have all the essential skills and experience?' page
  When I click 'Continue'
  Then I am on the 'Give evidence of the essential skills and experience' page
    And I see 'first evidence' as the value of the 'Boil kettle' field
    And I see 'second evidence' as the value of the 'Taste tea' field
    And I see 'third evidence' as the value of the 'Wash mug' field
    And I see 'fourth evidence' as the value of the 'Dry mug' field
  When I enter 'Flick the switch' in the 'Boil kettle' field
    And I enter 'Drink the tea' in the 'Taste tea' field
    And I enter 'Use soap' in the 'Wash mug' field
    And I click 'Continue'
  Then I am on the 'Do you have any of the nice-to-have skills or experience?' page
    And I see the 'Yes' radio button is checked for the 'Talk snobbishly about water quality' question
    And I see 'First nice to have evidence' as the value of the 'Evidence of Talk snobbishly about water quality' field
    And I see the 'Yes' radio button is checked for the 'Sip quietly' question
    And I see 'Second nice to have evidence' as the value of the 'Evidence of Sip quietly' field
    And I see the 'No' radio button is checked for the 'Provide biscuits' question
    And I do not see the 'Evidence of Provide biscuits' field
  When I choose 'No' radio button for the 'Sip quietly' question
    And I choose 'Yes' radio button for the 'Provide biscuits' question
    And I enter 'Only the finest' in the 'Evidence of Provide biscuits' field
    And I click 'Continue'
  Then I am on the 'Email address the buyer should use to contact you' page
  When I enter 'example-email@gov.uk' in the 'respondToEmailAddress' field
    And I click 'Submit application'
  Then I am on the 'Your application for ‘Tea drinker’' page
    And I see the 'Your details' summary table filled with:
      | field               | value                |
      | Day rate            | £100                 |
      | Earliest start date | 28/09/17             |
      | Email address       | example-email@gov.uk |
    And I see the 'Your essential skills and experience' summary table filled with:
      | field       | value            |
      | Boil kettle | Flick the switch |
      | Taste tea   | Drink the tea    |
      | Wash mug    | Use soap         |
      | Dry mug     | fourth evidence  |
    And I see the 'Your nice-to-have skills and experience' summary table filled with:
      | field                               | value |
      | Talk snobbishly about water quality | First nice to have evidence |
      | Sip quietly                         |                             |
      | Provide biscuits                    |  Only the finest            |
