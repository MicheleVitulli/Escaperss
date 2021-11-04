Feature: Admin can delete an escape room
@javascript
Scenario: Delete an escape
    Given I am Admin
    Given I am on Escaperss home page
    When I follow "Aggiungi una nuova escape"
    Then I should be on the Aggiungi una nuova escape room Page
    When I fill in "Luogo" with "Game Over"
    And I fill in "Nome della stanza" with "Il manicomio"
    Then I press "Aggiungi"
    Then I should be on Escaperss home Page
    Then I should see "Il manicomio"
    When I follow confirm "Elimina"
    Then I should not see "Il manicomio"
