Feature: Bulbasaur
  Background:
    * url pokemon

    @id_1 @Bulbasaur
    Scenario: Bulbasaur
      Given path '/api/v2/evolution-chain/1'
      When method GET
      Then status 200
      * def id = response.id
