Class {
	#name : #Pasante,
	#superclass : #Empleado,
	#instVars : [
		'cantExamenes'
	],
	#category : #'TP4Ejer5-model'
}

{ #category : #'as yet unclassified' }
Pasante class >> casado: aBoolean hijos: aCantHijos cantExamenes: aCantExamenes [
	^ (self casado: aBoolean hijos: aCantHijos)
		cantExamenes: aCantExamenes
]

{ #category : #calculadorDeSueldo }
Pasante >> adicional [
	^ self extraPorExamenes
]

{ #category : #calculadorDeSueldo }
Pasante >> basico [
	^ 2000
]

{ #category : #accessing }
Pasante >> cantExamenes: aInteger [
	cantExamenes := aInteger
]

{ #category : #'as yet unclassified' }
Pasante >> extraPorExamenes [
	^ 100 * cantExamenes
]
