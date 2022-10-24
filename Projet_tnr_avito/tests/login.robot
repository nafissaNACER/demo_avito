*** Settings ***
Resource     ../config/resources.txt
Test Setup      My Test Set Up      ${URL}      ${BROWSER}
Test Teardown     My Test Tear Down

*** Variables ***
${BIEN}    Voiture
${URL}      https://www.avito.ma/
${BROWSER}      chrome

*** Test Cases ***
Chercher Un Bien Sur Avito
    Given Recherhcer Sur Avito        ${BIEN}
    When Cliquer Bouton Recherche
    Then Un Ensemble Des Voitures Affichee


