private receiving
readLines: aBlock
	
	self readLinesUpTo: '0000' do: aBlock