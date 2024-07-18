Feature: Test signup into Products Store

  Background:
    * url urlBase
    * def loginBody = read ('signup.json')
    * def randomString = function(len) { var text = ""; var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"; for (var i = 0; i < len; i++) text += possible.charAt(Math.floor(Math.random() * possible.length)); return text; }

  Scenario: Create a new user account
    Given path 'signup'
    And set loginBody.username = randomString(10)
    And set loginBody.password = randomString(10)
    * print loginBody
    And request loginBody
    When method post
    Then status 200

  Scenario: Create a existing user account
    Given path 'signup'
    And set loginBody.username = 'test'
    And set loginBody.password = 'test'
    * print loginBody
    And request loginBody
    When method post
    Then status 200
    * print response
    * match response.errorMessage == 'This user already exist.'