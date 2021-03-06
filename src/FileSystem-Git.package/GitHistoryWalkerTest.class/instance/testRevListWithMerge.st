testing
testRevListWithMerge
	| commit1 commit2 commit3 commit4 revList |
	commit1 := self addCommit: '1' withParents: nil.
	commit2 := self addCommit: '2' withParents: {commit1 hexHash}.
	commit3 := self addCommit: '3' withParents: {commit1 hexHash}.
	commit4 := self addCommit: '4' withParents: {commit2 hexHash. commit3 hexHash}.
	repository unitOfWork updateRef: 'refs/heads/master' to: commit4 hexHash.
	GitFSCK validate: repository.
	"when"
	revList := historyWalker startingFrom: (repository unitOfWork branches at: 'master').
	"then"
	self assert: (revList asBag = {commit1. commit2. commit3. commit4} asBag)