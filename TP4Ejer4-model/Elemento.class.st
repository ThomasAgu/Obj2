Class {
	#name : #Elemento,
	#superclass : #Object,
	#instVars : [
		'nombre',
		'fechaCreacion'
	],
	#category : #'TP4Ejer4-model'
}

{ #category : #'as yet unclassified' }
Elemento class >> llamado: unString creadoEl: unaFecha [
	^ self new nombre: unString fecha: unaFecha
]

{ #category : #'as yet unclassified' }
Elemento >> defectNombre [
	^ self subclassResponsibility
]

{ #category : #'as yet unclassified' }
Elemento >> fecha [
	^ fechaCreacion
]

{ #category : #initialization }
Elemento >> initialize [
	fechaCreacion := Date today.
	self defectNombre
]

{ #category : #accessing }
Elemento >> nombre [
	^ nombre
]

{ #category : #accessing }
Elemento >> nombre: aName [
	nombre := aName
]

{ #category : #accessing }
Elemento >> nombre: aName fecha: aDate [
	nombre := aName.
	fechaCreacion := aDate asDate
]

{ #category : #'as yet unclassified' }
Elemento >> tamanoTotalOcupado [
	"devuelve el tamaño en kb"

	^ self subclassResponsibility
]
