Class {
	#name : #TemporarioTest,
	#superclass : #TestCase,
	#instVars : [
		'temporario'
	],
	#category : #'TP4Ejer5-test'
}

{ #category : #running }
TemporarioTest >> setUp [
	"Hooks that subclasses may override to define the fixture of test."

	temporario := Temporario casado: true hijos: 7 horas: 10
]

{ #category : #tests }
TemporarioTest >> testSueldo [
	self assert: temporario sueldo equals: 4707
]
