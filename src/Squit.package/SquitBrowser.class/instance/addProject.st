actions
addProject
	| workingCopy name directory repositoryPath |
	workingCopy := SquotWorkingCopy newOnObjectMemory.
	name := UIManager default request: 'Project name:'.
	name ifEmpty: [^ self].
	workingCopy name: name.
	directory := (UIManager default chooseDirectory: 'Repository directory').
	directory ifNil: [^ self].
	repositoryPath := directory pathName.
	workingCopy repository: (SquitRepository new initializeInDirectory: (FileSystem disk root resolve: repositoryPath)).
	workingCopy loadedHistorian: (workingCopy repository historianNamed: 'master').
	workingCopy register.
	^ workingCopy