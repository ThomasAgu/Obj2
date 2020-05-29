Class {
	#name : #WaterTest,
	#superclass : #TopografiaTest,
	#category : #'TP4Ejer3-test'
}

{ #category : #running }
WaterTest >> setUp [
	"Hooks that subclasses may override to define the fixture of test."

	topografia := Water new
]

{ #category : #tests }
WaterTest >> testCantEarth [
	self assert: topografia cantEarth equals: 0
]

{ #category : #tests }
WaterTest >> testCantWater [
	self assert: topografia cantWater equals: 1
]

{ #category : #tests }
WaterTest >> testIsEquals [
	self assert: (topografia isEquals: Water new).
	self deny: (topografia isEquals: Earth new)
]
