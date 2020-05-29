Class {
	#name : #JsonAdapter,
	#superclass : #VoorheesExporter,
	#category : #Biblioteca
}

{ #category : #exporting }
JsonAdapter >> export: socios [
	^ NeoJSONWriter toStringPretty: (socios collect: [:each |  (self exportSocio: each)]).
	

]

{ #category : #'as yet unclassified' }
JsonAdapter >> exportSocio: socio [
	^ Dictionary new
		at: #nombre put: socio nombre;
		at: #email put: socio email;
		at: #legajo put: socio legajo;
		yourself
]
