private loading
loadMonticelloSnapshot: anMCSnapshot from: anArtifact replacing: aPackageInfoOrClass
	| objectClassName isSingleClass |
	objectClassName := anArtifact storeInfo at: #objectClassName.
	isSingleClass := objectClassName endsWith: ' class'.
	^ isSingleClass
		ifTrue: [self loadMonticelloClassSnapshot: anMCSnapshot
			from: anArtifact replacing: aPackageInfoOrClass]
		ifFalse: [self loadMonticelloPackageSnapshot: anMCSnapshot
			from: anArtifact replacing: aPackageInfoOrClass]