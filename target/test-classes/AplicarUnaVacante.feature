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
Feature: Aplicar a una vacante
  como usuario quiero aplicar a una vacante para poder enviar mi hoja de vida.
  
  @tag1
  Scenario: Enviar postulacion
    Given  toda la información del formulario de aplicación
    When el usuario diligencie todos los campos de formulario
    And adjunte la hoja de vida
    Then el sistema debe enviar la postulación del usuario.
    
  @tag2
  Scenario Outline: Validar nombre
    Given  nombre
    When el usuario teclee sus datos 
    Then el sistema debe validar que el nombre no tenga números.

  @tag3
  Scenario Outline: Validar nombre correcto
    Given el nombre <name>
    When el usuario teclee sus datos<value>
    Then el sistema debe validar que el nombre no tenga números.<status>
    
  @tag4
  Scenario Outline: Validar correo electronico
    Given el correo electrónico <name>
    When el usuario teclee sus datos<value>
    Then sistema debe validar que un correo valido<status>
    
 	@tag5
  Scenario Outline: Validar numero de celular
    Given el numero de celular o teléfono de contacto <name>
    When el usuario teclee sus datos<value>
    Then el sistema debe validar que el teléfono sea solo numérico.<status>
    
    @tag6
  Scenario Outline: Validar el documento de hoja de vida
    Given la hoja de vida <name>
    When el usuario adjunte el documento<value>
    Then el sistema debe validar que el tamaño del archivo no sea mayor a 356 MB.<status>
    
    @tag7
  Scenario Outline: Validar todos los campos
    Given  toda la información del usuario <name>
    When el usuario teclee sus datos<value>
    Then debe validar que todos los campos del formulario estén diligenciados si campos vacíos.

    Examples: 
      | name  | value | status  |
   
