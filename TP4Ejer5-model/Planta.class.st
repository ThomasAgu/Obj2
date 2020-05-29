Class {
	#name : #Planta,
	#superclass : #Empleado,
	#instVars : [
		'años'
	],
	#category : #'TP4Ejer5-model'
}

{ #category : #'as yet unclassified' }
Planta class >> casado: aBoolean hijos: aCantHijos antiguedad: aAntiguedad [
	^ (self casado: aBoolean hijos: aCantHijos) antiguedad: aAntiguedad
]

{ #category : #'as yet unclassified' }
Planta >> adicional [
	^ super adicional + self extraPorAntiguedad
]

{ #category : #'as yet unclassified' }
Planta >> antiguedad: aAntiguedad [
	años := aAntiguedad
]

{ #category : #calculadorDeSueldo }
Planta >> basico [
	^ 3000
]

{ #category : #'as yet unclassified' }
Planta >> extraPorAntiguedad [
	^ años * 100
]
