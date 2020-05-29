Class {
	#name : #Archivo,
	#superclass : #Elemento,
	#instVars : [
		'tamaño'
	],
	#category : #'TP4Ejer4-model'
}

{ #category : #'as yet unclassified' }
Archivo class >> llamado: unString creadoEl: unaFecha kBytes: unNumero [
	^ (self llamado: unString creadoEl: unaFecha) tamaño: unNumero
]

{ #category : #'as yet unclassified' }
Archivo >> defectNombre [
	nombre := 'nuevoArchivo'
]

{ #category : #initialization }
Archivo >> initialize [
	super initialize.
	tamaño := 32
]

{ #category : #accessing }
Archivo >> tamanoTotalOcupado [
	^ tamaño
]

{ #category : #accessing }
Archivo >> tamaño: aSize [
	tamaño := aSize
]
