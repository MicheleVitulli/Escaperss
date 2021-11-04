Feature: User can delete his review
    @javascript
    Scenario: Delete a review
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
        Given I am on Escaperss home page
        When I follow "Dettagli e recensioni"
        When I fill in "Testo recensione" with "Questa è una recensione di prova"
        And I press "Pubblica"
        Then I should see "Questa è una recensione di prova"
        When I follow confirm "Elimina recensione"
        Then I should not see "Questa è una recensione di prova"
