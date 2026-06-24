Feature: Ivysaur
  Background:
    * url pokemon
    * def idAnterior = read('classpath:features/Pokemon/pokeApi/kanto/Bulbasaur.feature@id_1')

    @id_2 @Ivysaur
    Scenario:
      * def idActual = idAnterior.id
    Given path '/api/v2/evolution-chain/' + idActual
      When method GET
      Then status 200
