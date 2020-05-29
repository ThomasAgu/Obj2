Class {
	#name : #PasanteTest,
	#superclass : #TestCase,
	#instVars : [
		'pasante'
	],
	#category : #'TP4Ejer5-test'
}

{ #category : #running }
PasanteTest >> setUp [
	"Hooks that subclasses may override to define the fixture of test."

	pasante := Pasante casado: false hijos: 1 cantExamenes: 17
]

{ #category : #tests }
PasanteTest >> testSueldo [
	self assert: pasante sueldo equals: 3355
	"2000 percent * 87 + (1700 percent * 95)  3355"
]
