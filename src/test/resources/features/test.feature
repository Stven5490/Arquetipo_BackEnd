Feature:
  Background:
    * url servidor + artefacto
    * def exp = read('classpath:features/funcion/data/data.json')

  Scenario: Titulo de Test Case
    Given path
    And request exp
    When method POST
    Then status 200

  Scenario Outline: Titulo funcionalidad
    * set exp.data1 = <dato1>
    * set exp.data2 = <dato2>
    Given path
    And request exp
    When method POST
    Then status 200
    Examples:
      | dato1 | dato2 |
      | 1     | 2     |

  Scenario Template: Titulo funcionalidad
    * set exp.data1 = <dato1>
    * set exp.data2 = <dato2>
    Given path
    And request exp
    When method POST
    Then status 200
    Examples:
      | dato1 | dato2 |
      | 1     | 2     |