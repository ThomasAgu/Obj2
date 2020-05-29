Class {
	#name : #'In_Progress',
	#superclass : #Estado,
	#category : #'Tp5E1-Modelo'
}

{ #category : #initialization }
In_Progress >> finish [ 
	todoitem estado: (Finished todoItem: todoitem) .
]

{ #category : #initialization }
In_Progress >> togglePause [
	todoitem estado: (Paused todoItem: todoitem) .
]
