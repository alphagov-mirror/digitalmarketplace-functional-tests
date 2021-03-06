@smoulder-tests @supplier @opportunities
Feature: Supplier viewing and filtering DOS opportunities - extension of smoke tests

Scenario Outline: User can filter by individual status
  Given I visit the /digital-outcomes-and-specialists/opportunities page
  When I note the result_count
  And I check the '<status>' checkbox in the 'Status' group
  And I wait for the page to reload
  Then I see that the stated number of results does not exceed that result_count
  And I see all the opportunities on the page are of the '<status>' status

  Examples:
    | status       |
    | Open         |
    | Closed       |

Scenario: Checking all statuses returns all results
  Given I visit the /digital-outcomes-and-specialists/opportunities page
  When I note the result_count
  And I check all 'status' checkboxes
  And I wait for the page to reload
  Then I see that the stated number of results equals that result_count

Scenario Outline: User can filter by individual location
  Given I visit the /digital-outcomes-and-specialists/opportunities page
  When I note the result_count
  And I check the '<location>' checkbox in the 'Location' group
  And I wait for the page to reload
  Then I see that the stated number of results does not exceed that result_count
  And I see all the opportunities on the page are in the '<location>' location

  Examples:
    | location                       |
    | Scotland                       |
    | International (outside the UK) |
    | Off-site                       |

Scenario: Specialist roles are selectable for Digital specialists
  Given I visit the /digital-outcomes-and-specialists/opportunities page
  Then I don't see a 'Specialist role' button
  And I don't see a 'Designer' checkbox
  And I don't see any 'specialistRole' checkboxes
  When I click 'Digital specialists'
  And I note the result_count
  Then a filter checkbox's associated aria-live region contains that result_count
  And I check the 'Designer' checkbox in the 'Specialist role' group
  And I wait for the page to reload
  Then I see that the stated number of results does not exceed that result_count
  And I see all the opportunities on the page are on the 'Digital specialists' lot
  And I see all the opportunities on the page are for the 'Designer' role
  When I note the result_count
  Then a filter checkbox's associated aria-live region contains that result_count

Scenario Outline: Specialist roles are not selectable for non-Digital specialists lots
  Given I visit the /digital-outcomes-and-specialists/opportunities page
  Then I don't see a 'Specialist role' button
  And I don't see a 'Designer' checkbox
  And I don't see any 'specialistRole' checkboxes
  When I click the '<lot>' category link
  Then I don't see a 'Specialist role' button
  And I don't see a 'Designer' checkbox
  And I don't see any 'specialistRole' checkboxes

  Examples:
    | lot                        |
    | Digital outcomes           |
    | User research participants |

Scenario Outline: User gets no results for impossible combinations of location and lot
  Given I visit the /digital-outcomes-and-specialists/opportunities page
  And I click the '<lot>' category link
  And I check the '<location>' checkbox in the 'Location' group
  And I wait for the page to reload
  Then I see no results
  # now we backtrack a bit to check the lot "link" has been made unclickable when showing it has no results
  When I click 'Clear filters'
  And I wait for the page to reload
  And I click 'All categories'
  And I wait for the page to load
  And I check the '<location>' checkbox in the 'Location' group
  And I wait for the page to reload
  Then I don't see the '<lot>' link

  Examples:
    | lot                        | location                       |
    | Digital specialists        | International (outside the UK) |
    | Digital outcomes           | International (outside the UK) |
    | User research participants | Off-site                       |


Scenario Outline: User can filter by status, lot, location and keyword together
  Given I visit the /digital-outcomes-and-specialists/opportunities page
  When I note the result_count
  And I click the '<lot>' category link
  Then I see that the stated number of results does not exceed that result_count
  And I note the result_count
  When I check the '<status>' checkbox in the 'Status' group
  And I wait for the page to reload
  Then I see that the stated number of results does not exceed that result_count
  And I note the result_count
  And I see all the opportunities on the page are on the '<lot>' lot
  And I see all the opportunities on the page are of the '<status>' status
  When I check the '<location>' checkbox in the 'Location' group
  And I wait for the page to reload
  Then I see that the stated number of results does not exceed that result_count
  And I note the result_count
  And I see all the opportunities on the page are on the '<lot>' lot
  And I see all the opportunities on the page are of the '<status>' status
  And I see all the opportunities on the page are in the '<location>' location
  When I search for '<phrase>' using the search box
  And I wait for the page to reload
  Then I see '<phrase>' in the search summary text
  And I see that the stated number of results does not exceed that result_count
  And I note the result_count
  And I see all the opportunities on the page are on the '<lot>' lot
  And I see all the opportunities on the page are of the '<status>' status
  And I see all the opportunities on the page are in the '<location>' location
  # now we remove filters in a different order to test different combinations
  When I uncheck '<status>' checkbox
  And I wait for the page to reload
  Then I see '<phrase>' in the search summary text
  And I see that the stated number of results is no fewer than that result_count
  And I note the result_count
  And I see all the opportunities on the page are on the '<lot>' lot
  And I see all the opportunities on the page are in the '<location>' location
  When I click 'All categories'
  And I wait for the page to load
  Then I see '<phrase>' in the search summary text
  And I see that the stated number of results is no fewer than that result_count
  And I note the result_count
  And I see all the opportunities on the page are in the '<location>' location
  When I uncheck the '<location>' checkbox in the 'Location' group
  And I wait for the page to reload
  Then I see '<phrase>' in the search summary text
  And I see that the stated number of results is no fewer than that result_count

  Examples:
    | lot                        | status       | location                       | phrase              |
    | Digital specialists        | Open         | Scotland                       | governments         |
    | Digital outcomes           | Open         | International (outside the UK) | digital             |
    | User research participants | Open         | Off-site                       | services            |
    | Digital specialists        | Closed       | South West England             | enterprise software |
    | Digital outcomes           | Closed       | International (outside the UK) | delivery            |
    | User research participants | Closed       | Off-site                       | "agile methodology" |
    | Digital specialists        | Open         | London                         | improve             |
    | Digital outcomes           | Closed       | International (outside the UK) | performance         |
    | User research participants | Open         | Off-site                       | analyze             |
    | Digital specialists        | Closed       | Wales                          | management          |
    | Digital outcomes           | Open         | Yorkshire and the Humber       | national            |
    | User research participants | Closed       | Northern Ireland               | metempsychosis      |
