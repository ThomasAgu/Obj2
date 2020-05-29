Class {
	#name : #BibliotecaTest,
	#superclass : #TestCase,
	#instVars : [
		'biblioteca1'
	],
	#category : #TestBiblioteca
}

{ #category : #running }
BibliotecaTest >> setUp [
	"Hooks that subclasses may override to define the fixture of test."

	| arya tyron |
	biblioteca1 := Biblioteca new: JsonAdapter new.
	arya := Socio
		nombre: 'Arya Stark'
		email: 'needle@stark.com'
		legajo: '5234/5'.
	tyron := Socio
		nombre: 'Tyron Lannister'
		email: 'tyron@thelannisters.com'
		legajo: '2345/2'.
	biblioteca1 agregarSocio: arya.
	biblioteca1 agregarSocio: tyron.
	biblioteca1 exportarSocios
]

{ #category : #tests }
BibliotecaTest >> testAgregarSocio [
	biblioteca1
		agregarSocio:
			(Socio
				nombre: 'OyeComoVa'
				email: 'oyecomova@stark.com'
				legajo: '8003/9').
	self assert: biblioteca1 socios size equals: 3.
	self
		assert:
			(biblioteca1 socios
				anySatisfy: [ :socio | socio nombre = 'OyeComoVa' ]).
	self
		assert:
			(biblioteca1 socios
				anySatisfy: [ :socio | socio nombre = 'Arya Stark' ]).
	self
		assert:
			(biblioteca1 socios
				anySatisfy: [ :socio | socio nombre = 'Tyron Lannister' ])
]

{ #category : #tests }
BibliotecaTest >> testExportarSocios [
	self
		assert: biblioteca1 exportarSocios
		equals:
			'[
	{
		"legajo" : "5234/5",
		"email" : "needle@stark.com",
		"nombre" : "Arya Stark"
	},
	{
		"legajo" : "2345/2",
		"email" : "tyron@thelannisters.com",
		"nombre" : "Tyron Lannister"
	}
]'
]
