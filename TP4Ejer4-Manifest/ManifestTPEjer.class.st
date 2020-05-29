"
I store metadata for this package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestTPEjer,
	#superclass : #PackageManifest,
	#category : #'TP4Ejer4-Manifest'
}

{ #category : #'code-critics' }
ManifestTPEjer class >> ruleAssertEqualSignIntoAssertEqualsV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#DirectorioTest #testListadoDeContenido #false)) #'2020-05-24T17:32:09.074926-03:00') )
]

{ #category : #'code-critics' }
ManifestTPEjer class >> ruleGRTemporaryNeitherReadNorWrittenRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#Directorio #listadoDeContenido #false)) #'2020-05-24T16:46:01.684926-03:00') )
]

{ #category : #'code-critics' }
ManifestTPEjer class >> ruleRBStringConcatenationRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#Directorio #listadoDeContenido #false)) #'2020-05-24T16:36:47.410926-03:00') #(#(#RGMethodDefinition #(#Directorio #imprimirCon: #false)) #'2020-05-24T16:37:23.131926-03:00') )
]

{ #category : #'code-critics' }
ManifestTPEjer class >> ruleShouldSendSuperSetUpAsFirstMessageV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#DirectorioTest #setUp #false)) #'2020-05-24T17:29:09.217926-03:00') )
]
