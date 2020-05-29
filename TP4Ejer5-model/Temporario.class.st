Class {
	#name : #Temporario,
	#superclass : #Empleado,
	#instVars : [
		'horas'
	],
	#category : #'TP4Ejer5-model'
}

{ #category : #'as yet unclassified' }
Temporario class >> casado: aBoolean hijos: aCantHijos horas: aInteger [
	^ (self casado: aBoolean hijos: aCantHijos) horas: aInteger
]

{ #category : #calculadorDeSueldo }
Temporario >> basico [
	^ 4000 + self extraPorHoras
]

{ #category : #'as yet unclassified' }
Temporario >> extraPorHoras [
	^ horas * 10
]

{ #category : #accessing }
Temporario >> horas: aInteger [
	horas := aInteger
]
