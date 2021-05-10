#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template
@tag
Feature: Mirar una oferta de empleo específica
  como usuario quiero ver la descripción de la vacante para ver si cumplo con los requisitos para aplicar a ella.

  @tag1
  Scenario: Mostrar lista de ofertas
    Given que se haga clic sobre una oferta disponible<name>
    When el usuario haya escogido una oferta<value>
    Then el sistema debe. Mostrar la descripción de la misma.<status>



