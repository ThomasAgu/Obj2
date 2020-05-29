Class {
	#name : #Directorio,
	#superclass : #Elemento,
	#instVars : [
		'contenido'
	],
	#category : #'TP4Ejer4-model'
}

{ #category : #adding }
Directorio >> agregar: aElement [
	contenido add: aElement
]

{ #category : #'manejo de archivos' }
Directorio >> archivoLocalMasGrande [
	"devuelve el archivo mas grande del directorio"

	| archivos |
	archivos := self devolverArchivos.
	archivos isEmpty
		ifTrue: [ ^ nil ].
	archivos
		sort:
			[ :arch1 :arch2 | arch1 tamanoTotalOcupado > arch2 tamanoTotalOcupado ].
	^ archivos first
]

{ #category : #'manejo de archivos' }
Directorio >> archivoLocalMasNuevo [
	"devuelve el archivo mas nuevo del directorio"

	| archivos |
	archivos := self devolverArchivos.
	archivos isEmpty
		ifTrue: [ ^ nil ].
	archivos sort: [ :arch1 :arch2 | arch1 fecha < arch2 fecha ].
	^ archivos first
]

{ #category : #'manejo de archivos' }
Directorio >> archivoMasGrande [
	"Retorna el archivo con mayor cantidad de bytes en cualquier nivel del filesystemcontenido por directorio receptor."

	| directorios archivos |
	directorios := self devolverDirectorios.
	directorios isEmpty
		ifTrue: [ ^ self archivoLocalMasGrande ].
	archivos := directorios
		collect: [ :directorio | directorio archivoMasGrande ].
	archivos add: self archivoLocalMasGrande.
	archivos := archivos reject: [ :arch | arch isNil ].
	archivos
		sort:
			[ :arch1 :arch2 | arch1 tamanoTotalOcupado > arch2 tamanoTotalOcupado ].
	^ archivos first
]

{ #category : #'manejo de archivos' }
Directorio >> archivoMasNuevo [
	"retorna el archivo con fecha de creacion más reciente en cualquier nivel delfilesystem contenido por directorio receptor."

	| directorios archivos |
	directorios := self devolverDirectorios.
	directorios isEmpty
		ifTrue: [ ^ self archivoLocalMasNuevo ].
	archivos := directorios
		collect: [ :directorio | directorio archivoMasNuevo ].
	archivos add: self archivoLocalMasNuevo.
	archivos := archivos reject: [ :arch | arch isNil ].
	archivos sort: [ :arch1 :arch2 | arch1 fecha < arch2 fecha ].
	^ archivos first
]

{ #category : #imprecion }
Directorio >> coleccionListadoDeContenido [
	| coleccionDeStrings string directorios numArchivos |
	coleccionDeStrings := OrderedCollection new.
	directorios := self devolverDirectorios.
	string := '/' , self nombre.
	numArchivos := self devolverArchivos size.
	numArchivos = 0
		ifFalse: [ string := string , ' (' , numArchivos asString , ' archivos)' ].
	coleccionDeStrings add: string.
	directorios
		do: [ :directorio | 
			directorio coleccionListadoDeContenido
				do: [ :str | coleccionDeStrings add: '/' , self nombre , str ] ].
	^ coleccionDeStrings
]

{ #category : #accessing }
Directorio >> contenido: aContent [
	contenido := aContent
]

{ #category : #initialization }
Directorio >> defectNombre [
	nombre := 'nuevoDirectorio'
]

{ #category : #'manejo de archivos' }
Directorio >> devolverArchivos [
	"devuelve todos los archivos del directorio"

	^ contenido select: [ :elem | elem class = Archivo ]
]

{ #category : #'manejo de archivos' }
Directorio >> devolverDirectorios [
	"devuelve todos los archivos del directorio"

	^ contenido select: [ :elem | elem class = self class ]
]

{ #category : #initialization }
Directorio >> initialize [
	super initialize.
	contenido := OrderedCollection new
]

{ #category : #imprecion }
Directorio >> listadoDeContenido [
	| listadoStream coleccion primero |
	listadoStream := WriteStream on: String new.
	coleccion := self coleccionListadoDeContenido.
	primero := coleccion first.
	coleccion remove: primero.
	listadoStream << primero.
	coleccion
		do: [ :renglon | 
			listadoStream cr.
			listadoStream << renglon ].
	^ listadoStream contents
]

{ #category : #accessing }
Directorio >> nombre: aName contenido: aContent [
	contenido := aContent.
	self nombre: aName
]

{ #category : #accessing }
Directorio >> tamanoTotalOcupado [
	^ 32
		+ (contenido sumNumbers: [ :elemento | elemento tamanoTotalOcupado ])
]
