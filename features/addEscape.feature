Feature: Admin can add a escape room

Scenario: Add a escape
  Given I am Admin
  Given I am on Escaperss home page
  When I follow "Aggiungi una nuova escape"
  Then I should be on the Aggiungi una nuova escape room Page
  When I fill in "Luogo" with "Game Over"
  And I fill in "Nome della stanza" with "Il manicomio"
  Then I press "Aggiungi"
  Then I should be on Escaperss home Page
  And I should see "Game Over"


