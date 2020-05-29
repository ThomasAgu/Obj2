Class {
	#name : #ArchivoTest,
	#superclass : #TestCase,
	#instVars : [
		'archivo'
	],
	#category : #'TP4Ejer4-test'
}

{ #category : #running }
ArchivoTest >> setUp [
	"Hooks that subclasses may override to define the fixture of test."

	archivo := Archivo
		llamado: 'bestoJojoBro'
		creadoEl: '2015-01-01' asDate
		kBytes: 60
]

{ #category : #tests }
ArchivoTest >> testTamanoTotalOcupado [
	self assert: archivo tamanoTotalOcupado equals: 60
]
