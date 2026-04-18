Feature: Bulbasaur
  Background:
    * configure ssl = true
    * url pokemon

    @id_1 @Bulbasaur
    Scenario: Bulbasaur
      Given path 'api', 'v2', 'pokemon', 'bulbasaur'
      When method GET
      Then status 200
      * def nroPokemon = response.id