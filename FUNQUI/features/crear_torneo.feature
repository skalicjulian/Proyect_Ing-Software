Feature: Pagina de crear torneos
	
	Como Administrador
	Quiero poder crear un torneo ingresando el nombre, fecha y comentario

	Scenario: Crear un torneo
		Given Estoy en la pagina de crear torneos
		When Ingreso el nombre del torneo "Torneo UNQ"
		And Ingreso la fecha "15/11/2014"
		And Ingreso un comentario "Gran torneo de futboll 5"
		And Apreto el boton crear
		Then Veo el torneo creado en la lista