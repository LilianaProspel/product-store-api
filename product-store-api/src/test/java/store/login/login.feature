Feature: Test login into Products Store

  Background:
    * url urlBase
    * def loginBody = read ('login.json')
    * def randomString = function(len) { var text = ""; var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"; for (var i = 0; i < len; i++) text += possible.charAt(Math.floor(Math.random() * possible.length)); return text; }

  Scenario: Login with valid credentials
    Given path 'login'
    And set loginBody.username = 'LilianaEstefania'
    And set loginBody.password = 'ProspelQuishpe'
    * print loginBody
    And request loginBody
    When method post
    Then status 200
    * print response
    * match response contains 'Auth_token:'

  Scenario: Login with invalid credentials
    Given path 'login'
    And set loginBody.username = randomString(10)
    And set loginBody.password = randomString(10)
    * print loginBody
    And request loginBody
    When method post
    Then status 200
    * print response
    * match response.errorMessage == 'User does not exist.'