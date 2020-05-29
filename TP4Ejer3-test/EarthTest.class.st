Class {
	#name : #EarthTest,
	#superclass : #TopografiaTest,
	#category : #'TP4Ejer3-test'
}

{ #category : #running }
EarthTest >> setUp [
	"Hooks that subclasses may override to define the fixture of test."

	topografia := Earth new
]

{ #category : #tests }
EarthTest >> testCantEarth [
	self assert: topografia cantEarth equals: 1
]

{ #category : #tests }
EarthTest >> testCantWater [
	self assert: topografia cantWater equals: 0
]

{ #category : #tests }
EarthTest >> testIsEquals [
	self assert: (topografia isEquals: Earth new).
	self deny: (topografia isEquals: Water new)
]
