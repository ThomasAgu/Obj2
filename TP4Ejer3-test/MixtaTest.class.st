Class {
	#name : #MixtaTest,
	#superclass : #TopografiaTest,
	#category : #'TP4Ejer3-test'
}

{ #category : #running }
MixtaTest >> setUp [
	"Hooks that subclasses may override to define the fixture of test."

	| col |
	col := OrderedCollection new.
	col add: Water new.
	col add: Earth new.
	col add: Water new.
	col add: Earth new.
	topografia := Mixta with: col
]

{ #category : #tests }
MixtaTest >> testCantEarth [
	self assert: topografia cantEarth equals: 0.5
]

{ #category : #tests }
MixtaTest >> testCantWater [
	self assert: topografia cantEarth equals: 0.5
]

{ #category : #tests }
MixtaTest >> testIsEquals [
	| col |
	col := OrderedCollection new.
	col add: Water new.
	col add: Earth new.
	col add: Water new.
	col add: Earth new.
	self assert: (topografia isEquals: (Mixta with: col)).
	self deny: (topografia isEquals: Mixta new)
]
