#Author: your.email@your.domain.com
#Keywords Summary :

@tag
Feature: Búsqueda de ofertas de empleo
 Cómo Usuario quiero ver la lista de empleos disponibles para poder aplicar a una vacante.

  @tag1
  Scenario: Validar que no realice busqueda
    Given una(s) palabra(s) clave(s) <name>
    When el usuario teclea algo en el cuadro de texto “Keywords” <value>
    Then el sistema no debe realizar ninguna búsqueda.<status>


  @tag2
  Scenario Outline: Realizar busqueda con base en palabra clave desde location
    Given que el usuario está sobre el cuadro de texto “location” <name>
    When el usuario teclea la palabra clave <value>
    And presiona  la tecla Tab
    Then  el sistema debe realizar la búsqueda con base en la palabra clave.<status>
    
  @tag3
  Scenario Outline: Relizar busqueda por palabra clave desde keyword
    Given que el usuario está  ubicado en el  cuadro de texto “Keywords” <name>
    When el cursor pase al cuadro de texto “Location” <value>
    Then  debe realizar la búsqueda por la palabra clave .<status>
    
  @tag4
  Scenario Outline: Title of your scenario outline
    Given un clic sobre el cuadro de texto “Location <name>
    When el usuario escriba la palabra clave <value>
    Then  debe realizar la búsqueda por la palabra clave. .<status>
  
   @tag5
  Scenario Outline: No realizara busqueda
    Given una localización <name>
    When el usuario teclea algo en el cuadro de texto “Location” <value>
    Then  el sistema no debe realizar ninguna búsqueda.<status>

	@tag6
  Scenario Outline: Listar vacantes que existan
    Given un clic sobre el botón “Search Jobs” <name>
    When el usuario escriba la palabra clave o la localización <value>
    Then  el sistema debe buscar la vacante por la palabra clave y/o la localización 
		And listarla en caso de que exista.<status>
		
		
		
    Examples: 
      | name  | value | status  |
      | name1 |     5 | success |
      | name2 |     7 | Fail    |
