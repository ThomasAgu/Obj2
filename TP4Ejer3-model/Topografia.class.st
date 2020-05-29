Class {
	#name : #Topografia,
	#superclass : #Object,
	#category : #'TP4Ejer3-model'
}

{ #category : #'as yet unclassified' }
Topografia >> cantEarth [
	^ self subclassResponsibility
]

{ #category : #'as yet unclassified' }
Topografia >> cantWater [
	^ self subclassResponsibility
]

{ #category : #testing }
Topografia >> isEquals: aTopography [
	^ aTopography class = self class
]
