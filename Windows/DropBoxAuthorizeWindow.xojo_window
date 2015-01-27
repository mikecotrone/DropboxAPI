#tag Window
Begin Window DropBoxAuthorizeWindow
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   True
   Frame           =   11
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   355
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   355
   MaximizeButton  =   False
   MaxWidth        =   582
   MenuBar         =   706190868
   MenuBarVisible  =   True
   MinHeight       =   355
   MinimizeButton  =   False
   MinWidth        =   562
   Placement       =   0
   Resizeable      =   True
   Title           =   "Dropbox Account Authorization"
   Visible         =   True
   Width           =   562
   Begin HTMLViewer HTMLViewer1
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   323
      HelpTag         =   ""
      Index           =   -2147483648
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Renderer        =   1
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   0
      Visible         =   False
      Width           =   562
      Begin Label DisclosureLabel
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   24
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "HTMLViewer1"
         Italic          =   False
         Left            =   67
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   0
         TabPanelIndex   =   0
         Text            =   "Arista Navigator will only ask to authorize once using oAuth 2.0"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   16.0
         TextUnit        =   0
         Top             =   20
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   483
      End
   End
   Begin PushButton FinishedButton
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Finished!"
      Default         =   True
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   470
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   328
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin Separator Separator1
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   4
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   -25
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   322
      Visible         =   True
      Width           =   587
   End
   Begin ChartOpenCircle ChartOpenCircle1
      AcceptFocus     =   False
      AcceptTabs      =   True
      AnimationInterval=   20
      AutoDeactivate  =   True
      BackColor       =   &cFFFFFF00
      Backdrop        =   0
      ChartColor      =   &c00000000
      Enabled         =   True
      EraseBackground =   False
      HasBackColor    =   False
      Height          =   122
      HelpTag         =   ""
      InitialParent   =   ""
      Left            =   216
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      PercentValue    =   0
      Scope           =   0
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      Top             =   116
      Transparent     =   True
      UseFocusRing    =   False
      Visible         =   True
      Width           =   130
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  // INSTANTIATE DROPBOX API CLASS
		  DropboxOAUTHSocket = New Dropbox_oAuth_Socket
		  
		  // SET DASH CONTROL WHEEL VALUES
		  ChartOpenCircle1.AnimationInterval = 25 // SPEED OF CONTROL IN MS - LOWER VALUE IS FASTER
		  ChartOpenCircle1.PercentValue = 100.9
		  ChartOpenCircle1.Animate
		  
		  HTMLViewer1.Visible = False
		  HTMLViewer1.Enabled = False
		  
		  // BUILD AUTHORIZATION URL BASED ON PARAMETERS PASSED INTO COMMON_MODULE PROPERTIES
		  Dim DropBox_Authorization_Base_URL as String = "https://www.dropbox.com/1/oauth2/authorize?"
		  Dim ClientID as String = "&client_id="+Common_Module.Dropbox_Client_ID
		  Dim ResponseType as String = "&response_type=code"
		  Dim RedirectURI as String = "&redirect_uri="+Dropbox_Redirect_URI
		  
		  Dim Dropbox_Auth_URL as String = DropBox_Authorization_Base_URL + ClientID + ResponseType + RedirectURI
		  HTMLViewer1.LoadURL(Dropbox_Auth_URL)
		  
		  //"https://www.dropbox.com/1/oauth2/authorize?client_id=1l8g9qrlnuxynio&response_type=code&redirect_uri=https://www.google.com")
		  
		  
		  
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  // FORCE WHITE BACKGROUND
		  g.ForeColor = &cFFFFFF
		  g.FillRect(0,0,me.Width,me.Height)
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub ParseCode(PageContent as String)
		  Try
		    ChartOpenCircle1.Visible = False
		    ChartOpenCircle1.Enabled = False
		  Catch
		  End Try
		  // PARSE CODE
		  Dim Parse_AccessCode_RegEx as RegEx
		  Dim Parse_AccessCode_RegExMatch as RegExMatch
		  Dim Parse_AccessCode_HitText as String
		  Parse_AccessCode_RegEx = New RegEx
		  Parse_AccessCode_RegEx.Options.CaseSensitive = False
		  Parse_AccessCode_RegEx.Options.Greedy = True
		  Parse_AccessCode_RegEx.Options.StringBeginIsLineBegin = True
		  Parse_AccessCode_RegEx.Options.StringEndIsLineEnd = True
		  Parse_AccessCode_RegEx.Options.MatchEmpty = True
		  Parse_AccessCode_RegEx.Options.TreatTargetAsOneLine = False
		  Parse_AccessCode_RegEx.SearchPattern = "(?<=\?code=).+"
		  
		  Parse_AccessCode_RegExMatch = Parse_AccessCode_RegEx.Search(PageContent)
		  if Parse_AccessCode_RegExMatch <> nil then
		    Parse_AccessCode_HitText = Trim(Parse_AccessCode_RegExMatch.SubExpressionString(0))
		    Common_Module.DropboxOAUTHSocket.Dropbox_Access_Code = Parse_AccessCode_HitText
		  end if
		  
		  HTMLViewer1.Enabled = True
		  HTMLViewer1.Visible = True
		  
		  
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		CancelLoadURL As string
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Results As String
	#tag EndProperty


#tag EndWindowCode

#tag Events HTMLViewer1
	#tag Event
		Sub DocumentComplete(URL as String)
		  CancelLoadURL = URL
		  // PARSE ACCESS CODE INFO FROM REDIRECT URL
		  ParseCode(CancelLoadURL)
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  if me.IsAvailable then
		    dim agent as string
		    agent = "Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_8; en-us) AppleWebKit/533.16 (KHTML, like Gecko) Version/5.0 Safari/533.16"
		    me.UserAgent = agent
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events FinishedButton
	#tag Event
		Sub Action()
		  // PARSE TOKEN FROM RETURN URL
		  DropboxOAUTHSocket.API_Call_GetToken()
		  
		  // ENABLE MAIN WINDOW BUTTONS FOR DEMO
		  DemoWindow.UpdateDemoWindow()
		  
		  // CLOSE WINDOW
		  Self.Close
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  HTMLViewer1.ExecuteJavaScript("location.reload();")
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="BackColor"
		Visible=true
		Group="Appearance"
		InitialValue="&hFFFFFF"
		Type="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Appearance"
		Type="Picture"
		EditorType="Picture"
	#tag EndViewProperty
	#tag ViewProperty
		Name="CancelLoadURL"
		Group="Behavior"
		Type="string"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="CloseButton"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Frame"
		Visible=true
		Group="Appearance"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Metal Window"
			"10 - Drawer Window"
			"11 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreenButton"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackColor"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Position"
		InitialValue="400"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Interfaces"
		Visible=true
		Group="ID"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LiveResize"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Visible=true
		Group="Appearance"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxHeight"
		Visible=true
		Group="Position"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximizeButton"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxWidth"
		Visible=true
		Group="Position"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Appearance"
		Type="MenuBar"
		EditorType="MenuBar"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinHeight"
		Visible=true
		Group="Position"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimizeButton"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinWidth"
		Visible=true
		Group="Position"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Placement"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Appearance"
		InitialValue="Untitled"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Position"
		InitialValue="600"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
