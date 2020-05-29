Class {
	#name : #Paused,
	#superclass : #Estado,
	#category : #'Tp5E1-Modelo'
}

{ #category : #initialization }
Paused >> finish [ 
	todoitem estado: (Finished todoItem: todoitem) .
]

{ #category : #initialization }
Paused >> togglePause [
	todoitem estado: (In_Progress todoItem: todoitem) .
]
