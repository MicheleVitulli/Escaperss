Feature: User can leave a review

Scenario: Leave reviews
Given I am Admin
Given I am on Escaperss home page
When I follow "Aggiungi una nuova escape"
Then I should be on the Aggiungi una nuova escape room Page
When I fill in "Luogo" with "Game Over"
And I fill in "Nome della stanza" with "Il manicomio"
Then I press "Aggiungi"
Then I should be on Escaperss home Page
And I should see "Game Over"
When I follow "Logout"
    Given I am user
    And There is an Escape
    When I follow "Dettagli e recensioni"
    Then I should see "Scrivi una recensione"
    When I fill in "Testo recensione" with "Questa è una recensione di prova"
    And I select in "Valutazione" with "3"
    And I select in "Difficoltà" with "4"
    And I press "Pubblica"
    Then I should see "Questa è una recensione di prova"
    And I should see "3"
    And I should see "4"
    And I should see "Modifica recensione"
    And I should see "Elimina recensione"
