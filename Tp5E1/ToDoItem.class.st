Class {
	#name : #ToDoItem,
	#superclass : #Object,
	#instVars : [
		'name',
		'estado',
		'comentario',
		'comienzo'
	],
	#category : #'Tp5E1-Modelo'
}

{ #category : #accessing }
ToDoItem class >> name: aName [
	^self new initialize: aName
]

{ #category : #adding }
ToDoItem >> addComment: aComment [
	(estado class = Finished)
	ifFalse: [ comentario add: aComment ].
	^comentario
]

{ #category : #accessing }
ToDoItem >> comienzo [ 
	^comienzo
]

{ #category : #accessing }
ToDoItem >> estado [
	^estado
]

{ #category : #accessing }
ToDoItem >> estado: anState [
	estado := anState
]

{ #category : #initialization }
ToDoItem >> finish [ 	
	estado finish
]

{ #category : #initialization }
ToDoItem >> initialize: aName [
	name:= aName.
	comentario := OrderedCollection new.
	estado := Pending todoItem: self .
]

{ #category : #initialization }
ToDoItem >> start [
	 estado start.
	 comienzo := DateAndTime now.
	 
]

{ #category : #initialization }
ToDoItem >> togglePause [
	 estado togglePause
]

{ #category : #'as yet unclassified' }
ToDoItem >> workedTime [
	^estado workedTime .
	
]
