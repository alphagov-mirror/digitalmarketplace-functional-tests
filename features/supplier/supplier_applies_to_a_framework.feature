@supplier-framework-application
Feature: Apply to an open framework

Background:
  Given There is a framework that is open for applications
  And I have a supplier user
  And that supplier is logged in

Scenario: Supplier submits a framework declaration
  Given I am on the /suppliers page
  When I click 'Apply'
  And I am on the 'Apply to framework' page for that framework application

  When I click 'Enter your company details'
  Then I am on the 'Company details' page
  And I fill in all the missing details
  And I click 'Save and confirm'
  Then I am on the 'Apply to framework' page for that framework application

  When I click 'Make supplier declaration'
  Then I am on the 'Make your supplier declaration' page
  When I click 'Start your declaration'
  Then I am on the 'Your declaration overview' page

  When I answer all questions on that page
  Then I click 'Make declaration' button
  And I am on the 'Apply to framework' page for that framework application
  And I see 'You’ve made the supplier declaration' text on the page

  When I click 'Add, edit and complete services'
  Then I am on the 'Your framework services' page for that framework application
  Then I submit a service for each lot
  And I see '1 service will be submitted' text on the page
  And I click 'Back to framework application' link for that framework application
  And I see 'Your application will be submitted at' text on the page
