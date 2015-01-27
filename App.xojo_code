#tag Class
Protected Class App
Inherits Application
	#tag Note, Name = README
		Dropbox Core API SDK for Xojo
		
		Author:
		Mike Cotrone
		
		Licensed Under: 
		BSD-3-Clause - http://opensource.org/licenses/BSD-3-Clause
		
		Dropbox Core API Info: 
		https://www.dropbox.com/developers/core/docs
		
		
		NOTES:
		
		- Dropbox Core API SDK uses oAUTH 2.0
		- The DemoWindow buttons make the calls to the API and returns all results in a dictionary
		- Locale Tags: // USE THE APPROPRIATE LOCALE TAGS: http://en.wikipedia.org/wiki/IETF_language_tag
	#tag EndNote


	#tag Constant, Name = kEditClear, Type = String, Dynamic = False, Default = \"&Delete", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"&Delete"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"&Delete"
	#tag EndConstant

	#tag Constant, Name = kFileQuit, Type = String, Dynamic = False, Default = \"&Quit", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"E&xit"
	#tag EndConstant

	#tag Constant, Name = kFileQuitShortcut, Type = String, Dynamic = False, Default = \"", Scope = Public
		#Tag Instance, Platform = Mac OS, Language = Default, Definition  = \"Cmd+Q"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"Ctrl+Q"
	#tag EndConstant


	#tag ViewBehavior
	#tag EndViewBehavior
End Class
#tag EndClass
