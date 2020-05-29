Class {
	#name : #Mixta,
	#superclass : #Topografia,
	#instVars : [
		'hijos'
	],
	#category : #'TP4Ejer3-model'
}

{ #category : #'instance creation' }
Mixta class >> with: aHijos [
	^ self new hijos: aHijos
]

{ #category : #'as yet unclassified' }
Mixta >> cantEarth [
	^ (hijos sumNumbers: [ :topografia | topografia cantEarth ])
		/ hijos size
]

{ #category : #'as yet unclassified' }
Mixta >> cantWater [
	^ (hijos sumNumbers: [ :topografia | topografia cantWater ])
		/ hijos size
]

{ #category : #accessing }
Mixta >> hijos [
	^ hijos
]

{ #category : #accessing }
Mixta >> hijos: aHijos [
	hijos := aHijos
]

{ #category : #initialization }
Mixta >> initialize [
	hijos := OrderedCollection new.
	hijos add: Earth new.
	hijos add: Earth new.
	hijos add: Earth new.
	hijos add: Earth new
]

{ #category : #testing }
Mixta >> isEquals: aTopography [
	^ ((hijos at: 1) isEquals: (aTopography hijos at: 1))
		& ((hijos at: 2) isEquals: (aTopography hijos at: 2))
		& ((hijos at: 3) isEquals: (aTopography hijos at: 3))
		& ((hijos at: 4) isEquals: (aTopography hijos at: 4))
]
