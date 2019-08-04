"
The BaselineOf for Seaside Bootstrap for Pharo
"
Class {
	#name : #BaselineOfBootstrap,
	#superclass : #BaselineOf,
	#category : #BaselineOfBootstrap
}

{ #category : #baselines }
BaselineOfBootstrap >> baseline: spec [
	<baseline>
	
	spec for: #'common' do: [	
		self bootstrap: spec ]
]

{ #category : #baselines }
BaselineOfBootstrap >> bootstrap: spec [

	spec 
			package: 'Bootstrap-Core'; "Requires Seaside3 to be loaded"
			package: 'Bootstrap-Widgets' with: [
				spec requires: #('Bootstrap-Core' ). ];
			package: 'Bootstrap-Tests-Core' with: [
				spec requires: #('Bootstrap-Core' ). ];
			package: 'Bootstrap-Tests-Widgets' with: [
				spec requires: #('Bootstrap-Widgets' ). ];
			package: 'Bootstrap-Jasny';
			package: 'Bootstrap-Examples' with: [
				spec requires: #('Bootstrap-Core' 'Bootstrap-Widgets' 'Bootstrap-Jasny' ). ];
			package: 'Bootstrap-Tests-Jasny' with: [
				spec requires: #('Bootstrap-Jasny' ). ].
		spec 
			group: 'Core' with: #('Bootstrap-Core' );
			group: 'Widgets' with: #('Bootstrap-Widgets' );
			group: 'Tests' with: #('Bootstrap-Tests-Core' 'Bootstrap-Tests-Widgets' 'Bootstrap-Tests-Jasny' );
			group: 'Examples' with: #('Bootstrap-Examples' );
			group: 'Jasny' with: #('Bootstrap-Jasny' );
			group: 'default' with: #('Core' 'Widgets' 'Jasny' 'Tests' 'Examples' ) 
]
