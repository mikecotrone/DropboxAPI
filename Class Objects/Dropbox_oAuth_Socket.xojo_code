#tag Class
Protected Class Dropbox_oAuth_Socket
Inherits HTTPSecureSocket
	#tag Event
		Sub Error(code as integer)
		  // DROPBOX STANDARD ERRORS
		  // 400    Bad input parameter. Error message should indicate which one and why.
		  // 401    Bad or expired token. This can happen if the user or Dropbox revoked or expired an access token. To fix, you should re-authenticate the user.
		  // 403    Bad OAuth request (wrong consumer key, bad nonce, expired timestamp...). Unfortunately, re-authenticating the user won't help here.
		  // 404    File or folder not found at the specified path.
		  // 405    Request method not expected (generally should be GET or POST).
		  // 429    Your app is making too many requests and is being rate limited. 429s can trigger on a per-app or per-user basis.
		  // 503    If the response includes the Retry-After header, this means your OAuth 1.0 app is being rate limited. Otherwise, this indicates a transient server error, and your app should retry its request.
		  // 507    User is over Dropbox storage quota.
		  // 5xx    Server error. Check DropboxOps.
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub API_Call_GetToken()
		  Self.Secure = True
		  Self.port = 443
		  Self.ConnectionType = 3
		  
		  // SET HEADERS
		  Self.SetRequestHeader("Accept", "*/*")
		  Self.SetRequestHeader("Accept-Encoding:","gzip,deflate,sdch")
		  Self.SetRequestHeader("User-Agent:","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.101 Safari/537.36")
		  Self.SetRequestHeader("Connection", "keep-alive")
		  Self.SetRequestHeader("Accept-Language", "en-US,en;q=0.8")
		  
		  // SEND ACCESS TO GET TOKEN INFO
		  Dim theAccessCode as String = DropboxOAUTHSocket.Dropbox_Access_Code
		  Dim theClientID as string = Common_Module.Dropbox_Client_ID
		  Dim theClientSecret as String = Common_Module.Dropbox_Client_Secret
		  Dim theGrantType as String = "authorization_code"
		  Self.API_Call_Results = Self.Post(Self.Dropbox_API_URL+"?grant_type=" + theGrantType + "&code="+_
		  theAccessCode+"&client_id=" + theClientID + "&client_secret=" + theClientSecret + "&redirect_uri=https://www.google.com", 20)
		  
		  // PARSE RECEIVED JSON TOKEN RESPONSE
		  Dim ItemToParse as New JSONItem
		  Self.DropboxTokenResultsDictionary = New Dictionary
		  ItemToParse.Load(DropboxOAUTHSocket.API_Call_Results)
		  Self.DropboxTokenResultsDictionary = Common_Module.JSONToDictionary(ItemToParse)
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From HTTPSecureSocket
		  // Constructor() -- From TCPSocket
		  // Constructor() -- From SocketCore
		  Super.Constructor
		  
		  Dropbox_API_URL = "https://api.dropbox.com/1/oauth2/token"
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		API_Call_Results As String
	#tag EndProperty

	#tag Property, Flags = &h0
		DropboxTokenResultsDictionary As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h0
		Dropbox_Access_Code As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Dropbox_Access_Token As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Dropbox_API_URL As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Dropbox_Auth_TokenType As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Dropbox_Auth_UID As String
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="API_Call_Results"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CertificateFile"
			Visible=true
			Group="Behavior"
			Type="FolderItem"
			EditorType="File"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CertificatePassword"
			Visible=true
			Group="Behavior"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CertificateRejectionFile"
			Visible=true
			Group="Behavior"
			Type="FolderItem"
			EditorType="File"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ConnectionType"
			Visible=true
			Group="Behavior"
			InitialValue="2"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Dropbox_Access_Code"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Dropbox_Access_Token"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Dropbox_API_URL"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Dropbox_Auth_TokenType"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Dropbox_Auth_UID"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Secure"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
