Class {
	#name : #VoorheesExporterTest,
	#superclass : #TestCase,
	#instVars : [
		'voorheesExporter',
		'socio1',
		'socio2'
	],
	#category : #TestBiblioteca
}

{ #category : #running }
VoorheesExporterTest >> setUp [
	voorheesExporter := VoorheesExporter new.
	socio1 := Socio nombre: 'gyro' email: 'zeppe' legajo: 'lli'. 
	socio2 := Socio nombre: 'jonny' email: 'joestar' legajo: 'rella rella rella'.
]

{ #category : #tests }
VoorheesExporterTest >> testExport [
	|col|
	col :=OrderedCollection new.
	col add:socio1.
	col add:socio2.
	self assert: (voorheesExporter export:col) equals:
			'[
	{
		"nombre" : "gyro",
		"email" : "zeppe",
		"legajo" : "lli"
	},
	{
		"nombre" : "jonny",
		"email" : "joestar",
		"legajo" : "rella rella rella"
	}
]'.
]

{ #category : #'as yet unclassified' }
VoorheesExporterTest >> testExportSocio [
	self assert: (voorheesExporter exportSocio: socio1) equals:
	'	{
		"nombre" : "gyro",
		"email" : "zeppe",
		"legajo" : "lli"
	}'
]
