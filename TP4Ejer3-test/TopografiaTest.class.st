Class {
	#name : #TopografiaTest,
	#superclass : #TestCase,
	#instVars : [
		'topografia'
	],
	#category : #'TP4Ejer3-test'
}

{ #category : #running }
TopografiaTest >> setUp [
	"Hooks that subclasses may override to define the fixture of test."

	topografia := Topografia new
]

{ #category : #tests }
TopografiaTest >> testIsEquals [
	| comparable noComparable |
	comparable := Topografia new.
	self assert: (topografia isEquals: comparable).
	noComparable := Object new.
	self deny: (topografia isEquals: noComparable)
]
