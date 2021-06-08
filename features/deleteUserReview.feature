Feature: User can delete his review
    @javascript
    Scenario: Delete a review

        Given I am user
        Given I am on Escaperss home page
        When I follow "Dettagli e recensioni"
        When I fill in "Testo recensione" with "Questa è una recensione di prova"
        And I press "Pubblica"
        When I follow  confirm "Elimina recensione"
        