Feature: Admin can delete an escape room
@javascript
Scenario: Delete an escape
    Given I am Admin
    Given I am on Escaperss home page
    Then I should see "Il manicomio"
    When I follow confirm "Elimina"
    Then I should not see "Il manicomio"

  


