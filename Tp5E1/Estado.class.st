Class {
	#name : #Estado,
	#superclass : #Object,
	#instVars : [
		'todoitem'
	],
	#category : #'Tp5E1-Modelo'
}

{ #category : #'as yet unclassified' }
Estado class >> todoItem: anTodoItem [
	^self new todoItem: anTodoItem
]

{ #category : #initialization }
Estado >> finish [ 
	^self
]

{ #category : #accessing }
Estado >> start [ 	
	 ^self
]

{ #category : #'as yet unclassified' }
Estado >> todoItem: anTodoItem [
	todoitem := anTodoItem .
]

{ #category : #initialization }
Estado >> togglePause [
	^self error: 'el objeto ToDoItem no se encuentra en pause o in_progress'.
	
]

{ #category : #'as yet unclassified' }
Estado >> workedTime [
	^ (DateAndTime now - todoitem comienzo).
]
