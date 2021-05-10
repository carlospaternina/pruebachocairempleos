#Author: your.email@your.domain.com
#HU-1

@tag
Feature: Ingreso a la sección de empleos de Choucair
  Cómo cliente quiero una sección de empleos dentro de la página corporativa para facilitar el 
  proceso de selección de la compañía

  @tag1
  Scenario: Ingreso a la seccion de empleos
    Given el usuario este en la pagina web de www.choucairtesting.com
    When  el usuario haga click en el item de "Empleo" del menú superior
    Then me debe redirigir a la página de empleos de Choucair Testing

