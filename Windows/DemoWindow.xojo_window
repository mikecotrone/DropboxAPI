#tag Window
Begin Window DemoWindow
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   441
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   441
   MaximizeButton  =   False
   MaxWidth        =   786
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   441
   MinimizeButton  =   False
   MinWidth        =   786
   Placement       =   0
   Resizeable      =   False
   Title           =   "Dropbox Core API SDK v1.1 (Demo)"
   Visible         =   True
   Width           =   786
   Begin GroupBox GroupBox1
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Dropbox oAUTH 2.0 AUTHORIZATION"
      Enabled         =   True
      Height          =   257
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   10
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   10
      Underline       =   False
      Visible         =   True
      Width           =   341
      Begin TextField DB_ClientID_TextField
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   "Enter the Dropbox CLIENT_ID (App Key) that is given to you after you create a valid App in the Dropbox App Console."
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   61
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   7
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   59
         Underline       =   False
         UseFocusRing    =   False
         Visible         =   True
         Width           =   239
      End
      Begin Label DB_ClientID_Label
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   61
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   8
         TabPanelIndex   =   0
         Text            =   "Dropbox Client-ID (App key)"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   37
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   190
      End
      Begin TextField DB_ClientSecret_TextField
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   "Enter the Dropbox CLIENT_SECRET (App Secret) that is given to you after you create a valid App in the Dropbox App Console."
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   61
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   9
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   108
         Underline       =   False
         UseFocusRing    =   False
         Visible         =   True
         Width           =   239
      End
      Begin Label DB_ClientSecret_Label
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   61
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   10
         TabPanelIndex   =   0
         Text            =   "Dropbox Client-Secret (App Secret)"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   86
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   230
      End
      Begin TextField DB_RedirectURI_TextField
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   "This URL must be registered in your Dropbox App Console otherwise it won't work."
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   61
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   11
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "https://www.google.com"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   158
         Underline       =   False
         UseFocusRing    =   False
         Visible         =   True
         Width           =   238
      End
      Begin Label DB_RedirectID_Label
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   61
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   12
         TabPanelIndex   =   0
         Text            =   "Dropbox Redirect URI"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   136
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   130
      End
      Begin PushButton oAuth_AuthorizeButton
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Authorize"
         Default         =   True
         Enabled         =   False
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   61
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   13
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   235
         Underline       =   False
         Visible         =   True
         Width           =   96
      End
      Begin TextField DB_AppName_TextField
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   "This is the name of your App that you created in the Dropbox App Console."
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   61
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   14
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   204
         Underline       =   False
         UseFocusRing    =   False
         Visible         =   True
         Width           =   238
      End
      Begin Label DB_AppName_Label
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   61
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   15
         TabPanelIndex   =   0
         Text            =   "Dropbox App Name"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   182
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   130
      End
   End
   Begin GroupBox GroupBox2
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "DROPBOX API CALLS"
      Enabled         =   True
      Height          =   149
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   10
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   279
      Underline       =   False
      Visible         =   True
      Width           =   756
      Begin PushButton APIGetAccountInfoButton
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "My Account Info"
         Default         =   False
         Enabled         =   False
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox2"
         Italic          =   False
         Left            =   19
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   307
         Underline       =   False
         Visible         =   True
         Width           =   124
      End
      Begin PushButton APIPutFileButton
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Put File"
         Default         =   False
         Enabled         =   False
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox2"
         Italic          =   False
         Left            =   19
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   347
         Underline       =   False
         Visible         =   True
         Width           =   124
      End
      Begin Separator Separator1
         AutoDeactivate  =   True
         Enabled         =   True
         Height          =   133
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox2"
         Left            =   266
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   6
         TabPanelIndex   =   0
         TabStop         =   True
         Top             =   294
         Visible         =   True
         Width           =   39
      End
      Begin PushButton APIGetDeltaChangesButton
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Delta Changes"
         Default         =   False
         Enabled         =   False
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox2"
         Italic          =   False
         Left            =   19
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   4
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   386
         Underline       =   False
         Visible         =   True
         Width           =   124
      End
      Begin TextField DeltaFolderTextField
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   " Enter foldername"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox2"
         Italic          =   False
         Left            =   151
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   5
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   386
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   118
      End
      Begin TextField FolderNameTextField
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   " Folder name to create"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox2"
         Italic          =   False
         Left            =   431
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   7
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   307
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   139
      End
      Begin PushButton APICreateFolderButton
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Create Folder"
         Default         =   False
         Enabled         =   False
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox2"
         Italic          =   False
         Left            =   295
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   8
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   307
         Underline       =   False
         Visible         =   True
         Width           =   124
      End
      Begin PushButton APIDeleteFolderButton
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Delete Folder"
         Default         =   False
         Enabled         =   False
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox2"
         Italic          =   False
         Left            =   295
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   9
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   347
         Underline       =   False
         Visible         =   True
         Width           =   124
      End
      Begin TextField FolderToDelete_TextField
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   " Folder name to delete"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox2"
         Italic          =   False
         Left            =   431
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   10
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   347
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   139
      End
      Begin TextField FolderToPutFile_TextField
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   " blank for root"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox2"
         Italic          =   False
         Left            =   152
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   11
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   347
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   118
      End
   End
   Begin GroupBox GroupBox3
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Demo Status Updates"
      Enabled         =   True
      Height          =   218
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   363
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   10
      Underline       =   False
      Visible         =   True
      Width           =   403
      Begin TextArea TextArea1
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &c6B6B6B00
         Bold            =   False
         Border          =   True
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   191
         HelpTag         =   ""
         HideSelection   =   True
         Index           =   -2147483648
         InitialParent   =   "GroupBox3"
         Italic          =   False
         Left            =   369
         LimitText       =   0
         LineHeight      =   0.0
         LineSpacing     =   1.0
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Mask            =   ""
         Multiline       =   True
         ReadOnly        =   True
         Scope           =   0
         ScrollbarHorizontal=   False
         ScrollbarVertical=   True
         Styled          =   False
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &cFAFFFA00
         TextFont        =   "Helvetica Neue"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   30
         Underline       =   False
         UseFocusRing    =   False
         Visible         =   True
         Width           =   390
      End
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h0
		Sub UpdateDemoWindow()
		  // UPDATE DEMO WINDOW TEXTAREA
		  Self.TextArea1.Text = "Dropbox oAuth 2.0 successfully authorized"+EndOfLine+EndOfLine
		  
		  // UPDATE DEMO WINDOW BUTTON BEHAVIOUR
		  Self.oAuth_AuthorizeButton.Enabled = False
		  Self.APIGetAccountInfoButton.Enabled = True
		  Self.APIPutFileButton.Enabled =True
		  Self.APICreateFolderButton.Enabled = True
		  Self.APIGetDeltaChangesButton.Enabled = True
		  Self.APIDeleteFolderButton.Enabled = True
		  
		  // UPDATE DEMO WINDOW TEXTFIELD BEHAVIOUR
		  Self.DB_RedirectURI_TextField.Enabled = False
		  Self.DB_ClientID_TextField.Enabled = False
		  
		End Sub
	#tag EndMethod


#tag EndWindowCode

#tag Events DB_ClientID_TextField
	#tag Event
		Sub TextChange()
		  if Me.Text =  "" AND DB_RedirectURI_TextField.Text = "" Then
		    oAuth_AuthorizeButton.Enabled = False
		    
		  Elseif Me.Text <>  ""  AND DB_RedirectURI_TextField.Text = "" Then
		    oAuth_AuthorizeButton.Enabled = False
		    
		  Elseif Me.Text <>  ""  AND DB_RedirectURI_TextField.Text <> "" Then
		    // ALLOW AUTHORIZATION BUTTON TO BE ENABLED
		    oAuth_AuthorizeButton.Enabled = True
		    
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events DB_ClientSecret_TextField
	#tag Event
		Sub TextChange()
		  if Me.Text =  "" AND DB_RedirectURI_TextField.Text = "" Then
		    oAuth_AuthorizeButton.Enabled = False
		    
		  Elseif Me.Text <>  ""  AND DB_RedirectURI_TextField.Text = "" Then
		    oAuth_AuthorizeButton.Enabled = False
		    
		  Elseif Me.Text <>  ""  AND DB_RedirectURI_TextField.Text <> "" Then
		    // ALLOW AUTHORIZATION BUTTON TO BE ENABLED
		    oAuth_AuthorizeButton.Enabled = True
		    
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events DB_RedirectURI_TextField
	#tag Event
		Sub TextChange()
		  if Me.Text =  "" AND DB_ClientID_TextField.Text = "" Then
		    oAuth_AuthorizeButton.Enabled = False
		    
		  Elseif Me.Text <>  ""  AND DB_ClientID_TextField.Text = "" Then
		    oAuth_AuthorizeButton.Enabled = False
		    
		  Elseif Me.Text <>  ""  AND DB_ClientID_TextField.Text <> "" Then
		    // ALLOW AUTHORIZATION BUTTON TO BE ENABLED
		    oAuth_AuthorizeButton.Enabled = True
		    
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events oAuth_AuthorizeButton
	#tag Event
		Sub Action()
		  // MAP CLIENT ID TO COMMON MODULE PROPERY
		  Common_Module.Dropbox_Client_ID = Trim(DB_ClientID_TextField.Text)
		  Common_Module.Dropbox_Client_Secret = Trim(DB_ClientSecret_TextField.Text)
		  Common_Module.Dropbox_Redirect_URI = Trim(DB_RedirectURI_TextField.Text)
		  Common_Module.Dropbox_AppName = Trim(DB_AppName_TextField.Text)
		  
		  
		  // BEGIN AUTHORIZATION PROCESS
		  DropBoxAuthorizeWindow.Show()
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events DB_AppName_TextField
	#tag Event
		Sub TextChange()
		  if Me.Text =  "" AND DB_ClientID_TextField.Text = "" Then
		    oAuth_AuthorizeButton.Enabled = False
		    
		  Elseif Me.Text <>  ""  AND DB_ClientID_TextField.Text = "" Then
		    oAuth_AuthorizeButton.Enabled = False
		    
		  Elseif Me.Text <>  ""  AND DB_ClientID_TextField.Text <> "" Then
		    // ALLOW AUTHORIZATION BUTTON TO BE ENABLED
		    oAuth_AuthorizeButton.Enabled = True
		    
		  end IF
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events APIGetAccountInfoButton
	#tag Event
		Sub Action()
		  If Common_Module.DropboxAPICallSocket = NIL Then
		    Common_Module.DropboxAPICallSocket = New Dropbox_API_Calls
		  End If
		  
		  // MAKE API CALL USING DEFAULT LOCALE OF ENGLISH
		  // DROPBOX OPTIONAL AVAILABLE PARAMETERS =  (locale)
		  Dim DropboxAccountInfo as Dictionary = Common_Module.DropboxAPICallSocket.API_Call_AccountInfo("en")
		  
		  Dim thisValue, thisTitle as String
		  // PARSE RETURNED USER ACCOUNT DICTIONARY TO TEXTAREA FOR DEMO
		  for i as integer = 0 to DropboxAccountInfo.Count-1
		    
		    IF DropboxAccountInfo.Value(DropboxAccountInfo.Key(i)) ISA Dictionary Then
		      thisTitle = DropboxAccountInfo.Key(i)
		      thisValue = "<dictionary to recurse later>"
		    Else
		      thisTitle = DropboxAccountInfo.Key(i)
		      thisValue = DropboxAccountInfo.Value(DropboxAccountInfo.Key(i))
		    END IF
		    
		    // DEFINE UTF-8 ENCODING AND DISPLAY ON DemoWindow.TEXTAREA1
		    Dim s as String = DefineEncoding(thisTitle + "  :  " + thisValue+EndOfLine, Encodings.UTF8)
		    Self.TextArea1.AppendText s
		    
		  next i
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events APIPutFileButton
	#tag Event
		Sub Action()
		  Dim CopyFileResults_Dictionary as Dictionary
		  
		  If Common_Module.DropboxAPICallSocket = NIL Then
		    Common_Module.DropboxAPICallSocket = New Dropbox_API_Calls
		  End If
		  
		  Dim f As FolderItem = GetOpenFolderItem("")
		  If f <> Nil Then
		    // MAKE API CALL
		    // DROPBOX OPTIONAL AVAILABLE PARAMETERS =  ( locale, overwrite, parent_rev, autorename)
		    Dim FolderToPutFile as String = Trim(FolderToPutFile_TextField.Text)
		    CopyFileResults_Dictionary = Common_Module.DropboxAPICallSocket.API_Call_PutFile(f, "en", "true","","true", FolderToPutFile)
		  Else
		    // USER CANCELLED SO ABORT
		    Return
		  End If
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events APIGetDeltaChangesButton
	#tag Event
		Sub Action()
		  Dim DeltaChangesResults_Dictionary as Dictionary
		  
		  If Common_Module.DropboxAPICallSocket = NIL Then
		    Common_Module.DropboxAPICallSocket = New Dropbox_API_Calls
		  End If
		  
		  
		  Dim DeltaFolderName as String = Trim(DeltaFolderTextField.Text)
		  if DeltaFolderName <> "" Then
		    // MAKE API CALL
		    // DROPBOX OPTIONAL AVAILABLE PARAMETERS = (cursor, locale, path_prefix, include_media_info)
		    DeltaChangesResults_Dictionary = Common_Module.DropboxAPICallSocket.API_Call_Delta("","en",DeltaFolderName, "False")
		    
		    // BLANK OUT THE TEXTFIELD ON DEMO WINDOW
		    DeltaFolderTextField.Text = ""
		    
		    // PARSE RETURNED DELTA CHANGES DICTIONARY TO TEXT AREA FOR DEMO
		    Dim thisValue, thisTitle as String
		    for i as integer = 0 to DeltaChangesResults_Dictionary.Count-1
		      
		      IF DeltaChangesResults_Dictionary.Value(DeltaChangesResults_Dictionary.Key(i)) ISA Dictionary Then
		        thisTitle = DeltaChangesResults_Dictionary.Key(i)
		        thisValue = "<dictionary to recurse later>"
		        
		      Elseif DeltaChangesResults_Dictionary.Value(DeltaChangesResults_Dictionary.Key(i)).IsArray = True Then
		        thisTitle = DeltaChangesResults_Dictionary.Key(i)
		        thisValue = "<array to recurse later>"
		      Else
		        thisTitle = DeltaChangesResults_Dictionary.Key(i)
		        thisValue = DeltaChangesResults_Dictionary.Value(DeltaChangesResults_Dictionary.Key(i))
		      END IF
		      
		      // DEFINE UTF-8 ENCODING AND DISPLAY ON DemoWindow.TEXTAREA1
		      Dim s as String = DefineEncoding(thisTitle + "  :  " + thisValue+EndOfLine, Encodings.UTF8)
		      Self.TextArea1.AppendText s
		    next i
		    
		    
		    
		  Else
		    MsgBox "Please enter a folder name for Delta"
		  end if
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events APICreateFolderButton
	#tag Event
		Sub Action()
		  Dim CreateFolderResults_Dictionary as Dictionary
		  
		  If Common_Module.DropboxAPICallSocket = NIL Then
		    Common_Module.DropboxAPICallSocket = New Dropbox_API_Calls
		  End If
		  
		  Dim UserFolderName as String = Trim(FolderNameTextField.Text)
		  if UserFolderName <> "" Then
		    // MAKE API CALL
		    // DROPBOX OPTIONAL AVAILABLE PARAMETERS =  (locale)
		    CreateFolderResults_Dictionary = Common_Module.DropboxAPICallSocket.API_Call_CreateFolder(UserFolderName, "en")
		    
		    // BLANK OUT THE TEXTFIELD ON DEMO WINDOW
		    FolderNameTextField.Text = ""
		  Else
		    MsgBox "Please enter a folder name"
		  end if
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events APIDeleteFolderButton
	#tag Event
		Sub Action()
		  Dim DeleteFolderResults_Dictionary as Dictionary
		  
		  If Common_Module.DropboxAPICallSocket = NIL Then
		    Common_Module.DropboxAPICallSocket = New Dropbox_API_Calls
		  End If
		  
		  Dim UserFolderNameToDelete as String = Trim(FolderToDelete_TextField.Text)
		  if UserFolderNameToDelete <> "" Then
		    // MAKE API CALL
		    // DROPBOX OPTIONAL AVAILABLE PARAMETERS =  (locale)
		    DeleteFolderResults_Dictionary = Common_Module.DropboxAPICallSocket.API_Call_DeleteFolder(UserFolderNameToDelete, "en")
		    
		    // BLANK OUT THE TEXTFIELD ON DEMO WINDOW
		    FolderToDelete_TextField.Text = ""
		  Else
		    MsgBox "Please enter a folder name to delete"
		  end if
		  
		  
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
