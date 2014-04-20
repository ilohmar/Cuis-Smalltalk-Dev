'From Squeak3.7 of ''4 September 2004'' [latest update: #5989] on 30 January 2009 at 3:48:56 pm'!
	"For the TT strings in MVC widgets in a Morphic world such as a progress bar, the form is created by Morphic machinery.
	"
	| canvas tmpText |
	tmpText := OldTextMorph new contentsAsIs: text deepCopy.
			foreColor 
				ifNotNil: [tmpText text addAttribute: (TextColor color: foreColor)].
			backColor ifNotNil: [tmpText backgroundColor: backColor].
			tmpText setTextStyle: textStyle.
			canvas := FormCanvas on: (Form extent: tmpText extent depth: 32).
			tmpText drawOn: canvas.
			form := canvas form .

	self setPreferencesFrom:

	#(
		(optionalButtons false)
		(smartUpdating false)