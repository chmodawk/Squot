*Squit
squitBrowserSupplementObjectMenu: aMenu
	aMenu
		add: 'Edit postload script' action: #actionPackageInfoObjectEditPostscript;
		add: 'Edit preamble script' action: #actionPackageInfoObjectEditPreamble;
		add: 'Edit preremove script' action: #actionPackageInfoObjectEditPreambleOfRemoval;
		add: 'Edit postremove script' action: #actionPackageInfoObjectEditPostscriptOfRemoval.