synchronizing
remoteHistorians
	^ Array streamContents: [:stream |
		self git
			allReferencesPrefixedWith: 'refs/remotes/'
			do: [:each | stream nextPut: (SquitHistorian new
					repository: self;
					gitRepository: gitRepository repository;
					name: (each allButFirst: 'refs/remotes/' size);
					yourself)]]