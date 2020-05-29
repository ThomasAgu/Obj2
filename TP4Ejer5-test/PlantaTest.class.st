Class {
	#name : #PlantaTest,
	#superclass : #TestCase,
	#instVars : [
		'planta'
	],
	#category : #'TP4Ejer5-test'
}

{ #category : #running }
PlantaTest >> setUp [
	"Hooks that subclasses may override to define the fixture of test."

	planta := Planta casado: true hijos: 12 antiguedad: 53
]

{ #category : #tests }
PlantaTest >> testSueldo [
	self assert: planta sueldo equals: 9260
	"3000 percent * 87 + ((500+1200+5300) percent * 95)"
]
