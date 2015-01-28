#tag Class
Protected Class App
Inherits Application
	#tag Event
		Sub Open()
		  #IF TargetWin32 Then
		    App.UseGDIPlus = True
		  #ENDIF
		End Sub
	#tag EndEvent


	#tag ViewBehavior
	#tag EndViewBehavior
End Class
#tag EndClass
