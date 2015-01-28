#tag Window
Begin ContainerControl ChartOpenCircle
   AcceptFocus     =   False
   AcceptTabs      =   True
   AutoDeactivate  =   True
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   Compatibility   =   ""
   Enabled         =   True
   EraseBackground =   False
   HasBackColor    =   False
   Height          =   122
   HelpTag         =   ""
   InitialParent   =   ""
   Left            =   0
   LockBottom      =   False
   LockLeft        =   True
   LockRight       =   False
   LockTop         =   True
   TabIndex        =   0
   TabPanelIndex   =   0
   TabStop         =   True
   Top             =   0
   Transparent     =   True
   UseFocusRing    =   False
   Visible         =   True
   Width           =   130
   Begin Canvas BG
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   True
      Enabled         =   True
      EraseBackground =   False
      Height          =   122
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   0
      Transparent     =   True
      UseFocusRing    =   False
      Visible         =   True
      Width           =   130
   End
   Begin Timer AnimationTimer
      Height          =   32
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   40
      LockedInPosition=   False
      Mode            =   0
      Period          =   20
      Scope           =   2
      TabPanelIndex   =   0
      Top             =   40
      Width           =   32
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  //Me.ChartColor = &cFF0000AA
		  //Me.TextColor = &cFF000077
		  
		  self.AnimationIsRunning = false
		  self.AnimationValue = 0
		  self.PercentValue = 0
		  self.ChartColor =&c0280E4
		  self.TextColor = &c0280E4
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Animate()
		  // Animiert die Anzeige anhand Timer
		  
		  if AnimationIsRunning = false then
		    
		    AnimationValue = PercentValue
		    PercentValue = 0
		    AnimationIsRunning = True
		    AnimationTimer.Period = self.AnimationInterval
		    AnimationTimer.Mode = Timer.ModeMultiple
		    
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub CalculateArc()
		  // Berechnet Winkel anhand des übergebenen Prozentwertes
		  
		  if Me.PercentValue>100 then
		    
		    // Maximum
		    Me.ArcValue = 360
		    Me.PercentValue = 100
		    
		  elseif Me.PercentValue<1 then
		    
		    // Minimum
		    Me.ArcValue = 0
		    Me.PercentValue = 0
		    
		  else
		    
		    // Rest
		    Me.ArcValue = 3.6 * Me.PercentValue
		    
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawCircle(g as Graphics)
		  
		  try
		    Declare Sub CGContextSaveGState Lib "Cocoa" ( context As Integer )
		    Declare Sub CGContextSetInterpolationQuality Lib "Cocoa" ( context As Integer, quality As Integer )
		    Declare Sub CGContextRestoreGState Lib "Cocoa" ( context As Integer )
		    Dim CGContextRef As Integer = g.handle( g.HandleTypeCGContextRef )
		    CGContextSaveGState CGContextRef
		    CGContextSetInterpolationQuality CGContextRef, 3
		    g.AntiAlias = true
		    
		    dim a as new ArcShape
		    dim b as new ArcShape
		    dim c as new OvalShape
		    dim d as new OvalShape
		    
		    CalculateArc
		    
		    // Inhaltskreis
		    a.ArcAngle = (1.57/90)*Me.ArcValue
		    a.StartAngle = -1.57
		    a.Segments = 250
		    a.FillColor = Me.ChartColor
		    a.Height = BG.Height
		    a.Width = BG.Width
		    
		    // Restkreis
		    b.ArcAngle = (1.57/90)*(360-Me.ArcValue)
		    b.StartAngle = -1.57 + ((1.57/90)*Me.ArcValue)
		    b.Segments = 250
		    b.FillColor = &cabababBB
		    b.Height = BG.Height
		    b.Width = BG.Width
		    
		    // Mittlerer Bereich
		    c.Width = BG.Width -(BG.Width/3)
		    c.Height = BG.Height - (BG.Height/3)
		    c.FillColor = &cFFFFFF
		    
		    // weisser Hintergrund in Mitte
		    d.Width = BG.Width+3
		    d.Height = BG.Height+3
		    d.FillColor = &cFFFFFFBB
		    
		    // Textformatierungen
		    g.Bold = true
		    g.AntiAlias = true
		    g.ForeColor =  Me.TextColor
		    g.TextSize = (BG.Height) - (BG.Height/1.23)
		    
		    // Zeichne alle Objekte
		    g.DrawObject (d, self.Width/2, self.Height/2)
		    g.DrawObject (a, self.Width/2, self.Height/2)
		    g.DrawObject (b, self.Width/2, self.Height/2)
		    g.DrawObject (c, self.Width/2, self.Height/2)
		    
		    //  DRAW LOADING STRING
		    Dim CenterString as String = "Loading..."
		    g.TextFont = "System"
		    g.TextSize = 14
		    Dim CenterStringWidth as Double = g.StringWidth(CenterString)
		    Dim CenterStringHeight as Integer = g.StringHeight(CenterString, 200)
		    Dim xPos as Integer =  ((self.Width/2)-(CenterStringWidth/2))
		    Dim yPos as Integer = ((self.Height/2)-(CenterStringHeight/2))+13
		    g.DrawString(CenterString, xPos, yPos)
		    
		    CGContextRestoreGState CGContextRef
		  catch
		    
		  Finally
		    
		  end try
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Refresh()
		  BG.Invalidate(False)
		  
		End Sub
	#tag EndMethod


	#tag Note, Name = DASH-CONTROL-ATTRIBUTION
		SPECIAL THANKS TO TOMAS JAKOBS FOR THIS DASH CONTROL
		
	#tag EndNote


	#tag Property, Flags = &h0
		#tag Note
			return Me.AnimationInterval
		#tag EndNote
		AnimationInterval As Integer = 20
	#tag EndProperty

	#tag Property, Flags = &h21
		#tag Note
			return Me.AnimationIsRunning
		#tag EndNote
		Private AnimationIsRunning As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h21
		#tag Note
			return Me.AnimationValue
		#tag EndNote
		Private AnimationValue As Integer = -1
	#tag EndProperty

	#tag Property, Flags = &h21
		#tag Note
			return Me.ArcValue
		#tag EndNote
		Private ArcValue As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			return Me.ChartColor
		#tag EndNote
		ChartColor As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			return Me.PercentValue
		#tag EndNote
		PercentValue As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			return Me.TextColor
		#tag EndNote
		TextColor As Color
	#tag EndProperty


#tag EndWindowCode

#tag Events BG
	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  Declare Sub CGContextSaveGState Lib "Cocoa" ( context As Integer )
		  Declare Sub CGContextSetInterpolationQuality Lib "Cocoa" ( context As Integer, quality As Integer )
		  Declare Sub CGContextRestoreGState Lib "Cocoa" ( context As Integer )
		  Dim CGContextRef As Integer = g.handle( g.HandleTypeCGContextRef )
		  CGContextSaveGState CGContextRef
		  CGContextSetInterpolationQuality CGContextRef, 3
		  g.AntiAlias = true
		  
		  g.ForeColor = &CFFFFFF
		  g.FillRect(0,0,me.Width,me.Height)
		  DrawCircle(g)
		  
		  
		  CGContextRestoreGState CGContextRef
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events AnimationTimer
	#tag Event
		Sub Action()
		  if (self.PercentValue < self.AnimationValue) and AnimationIsRunning then
		    self.PercentValue = self.PercentValue + 1
		    BG.Invalidate
		  else
		    AnimationTimer.Mode = Timer.ModeOff
		    AnimationIsRunning = false
		    Self.Visible = False
		    Self.Enabled = False
		    self.AnimationIsRunning = false
		    self.AnimationValue = 0
		    self.PercentValue = 0
		  end if
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="AcceptFocus"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="AcceptTabs"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="AnimationInterval"
		Group="Behavior"
		InitialValue="20"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="AutoDeactivate"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
	#tag EndViewProperty
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
		Name="ChartColor"
		Group="Behavior"
		InitialValue="&c000000"
		Type="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Enabled"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="EraseBackground"
		Visible=true
		Group="Behavior"
		InitialValue="True"
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
		InitialValue="300"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HelpTag"
		Visible=true
		Group="Appearance"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="InitialParent"
		Group="Position"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Left"
		Visible=true
		Group="Position"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockBottom"
		Visible=true
		Group="Position"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockLeft"
		Visible=true
		Group="Position"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockRight"
		Visible=true
		Group="Position"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockTop"
		Visible=true
		Group="Position"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="PercentValue"
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabIndex"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabPanelIndex"
		Group="Position"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabStop"
		Visible=true
		Group="Position"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TextColor"
		Group="Behavior"
		InitialValue="&c000000"
		Type="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Top"
		Visible=true
		Group="Position"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Transparent"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="UseFocusRing"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
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
		InitialValue="300"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
