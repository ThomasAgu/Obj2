Class {
	#name : #Pending,
	#superclass : #Estado,
	#category : #'Tp5E1-Modelo'
}

{ #category : #'as yet unclassified' }
Pending class >> todoItem: anTodoItem [
	^self new todoItem: anTodoItem
]

{ #category : #accessing }
Pending >> start [ 
	todoitem estado: (In_Progress todoItem: todoitem) .
]

{ #category : #'as yet unclassified' }
Pending >> workedTime [
	^self error: 'La tarea todavia no esta inicializada'.
]
