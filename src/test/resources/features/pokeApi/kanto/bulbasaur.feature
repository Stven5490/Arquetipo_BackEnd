@001
Feature: Bulbasaur
  #https://pokeapi.co/api/v2/pokemon/ditto
  Background:
    * url poke

    Scenario: Bulbasaur
      Given path '/api/v2/pokemon/bulbasaur'
      When method GET
      Then status 200