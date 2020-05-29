Class {
	#name : #Empleado,
	#superclass : #Object,
	#instVars : [
		'casado',
		'cantHijos'
	],
	#category : #'TP4Ejer5-model'
}

{ #category : #'as yet unclassified' }
Empleado class >> casado: aBoolean hijos: aInteger [
	^ self new casado: aBoolean hijos: aInteger
]

{ #category : #'as yet unclassified' }
Empleado >> adicional [
	^ self extraPorCasado + self extraPorHijos
]

{ #category : #'as yet unclassified' }
Empleado >> basico [
	^ self subclassResponsibility
]

{ #category : #'as yet unclassified' }
Empleado >> casado: aBoolean hijos: aInteger [
	casado := aBoolean.
	cantHijos := aInteger
]

{ #category : #'as yet unclassified' }
Empleado >> descuento [
	^ self basico percent * (100 - 13)
		+ (self adicional percent * (100 - 5))
]

{ #category : #'as yet unclassified' }
Empleado >> extraPorCasado [
	casado
		ifTrue: [ ^ 500 ].
	^ 0
]

{ #category : #'as yet unclassified' }
Empleado >> extraPorHijos [
	^ 100 * cantHijos
]

{ #category : #'as yet unclassified' }
Empleado >> inicialize [
	casado := false.
	cantHijos := 0
]

{ #category : #'as yet unclassified' }
Empleado >> sueldo [
	^ self descuento
]
