#tag Class
Protected Class Dropbox_API_Calls
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
		Function API_Call_AccountInfo(optional inLocale as String) As Dictionary
		  // THIS FUNCTION MAKES THE DROPBOX API CALL - /account/info
		  
		  // PREPARE PASSED PARAMETERS
		  Dim locale as String = inLocale
		  
		  // MAKE ACCOUNT INFO API CALL (SYNC)
		  Dim Dropbox_API_URL as String = "https://api.dropbox.com/1/account/info?locale="+locale
		  Dim API_AccountInfo_Results_JSONString as String = Self.Get(Dropbox_API_URL,30)
		  
		  //  PARSE RESULTS FROM JSON TO DICTIONARY
		  Dim ItemToParse as New JSONItem
		  Dim API_AccountInfo_Results_Dictionary as Dictionary
		  API_AccountInfo_Results_Dictionary = New Dictionary
		  ItemToParse.Load(API_AccountInfo_Results_JSONString)
		  API_AccountInfo_Results_Dictionary = Common_Module.JSONToDictionary(ItemToParse)
		  
		  // RETURN DICTIONARY
		  Return API_AccountInfo_Results_Dictionary
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function API_Call_CreateFolder(inFolderName as String, optional inLocale as String) As Dictionary
		  // THIS METHOD PERFORMS THE DROPBOX API -  /fileops/create_folder
		  
		  //  PREPARE PASSED PARAMETERS
		  Dim locale as String = inLocale
		  
		  // PREPARE THE PASSED FOLDERNAME
		  Dim theFolderName as String = EncodeURLComponent("/"+inFoldername)
		  
		  // SET POST URL - /root/path
		  Dim Dropbox_API_URL as String = "https://api.dropbox.com/1/fileops/create_folder?root=auto&path=" + theFolderName + "&locale=" + locale
		  
		  // PERFORM SYNCHRONOUS POST
		  Dim API_CreateFolder_Results_JSONString as String = Self.Post(Dropbox_API_URL,30)
		  
		  //  PARSE JSON RECEIVED RESULTS TO A DICTIONARY
		  Dim ItemToParse as New JSONItem
		  Dim API_CreateFolder_Results_Dictionary as Dictionary
		  
		  API_CreateFolder_Results_Dictionary = New Dictionary
		  ItemToParse.Load(API_CreateFolder_Results_JSONString)
		  API_CreateFolder_Results_Dictionary = Common_Module.JSONToDictionary(ItemToParse)
		  
		  Return API_CreateFolder_Results_Dictionary
		  
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function API_Call_DeleteFolder(inFolderName as String, optional inLocale as String) As Dictionary
		  // THIS METHOD PERFORMS THE DROPBOX API - /fileops/delete
		  
		  //  PREPARE PASSED PARAMETERS
		  Dim locale as String = inLocale
		  
		  // PREPARE THE PASSED FOLDERNAME
		  Dim theFolderName as String = EncodeURLComponent("/"+inFoldername)
		  
		  // SET POST URL - /root/path
		  Dim Dropbox_API_URL as String = "https://api.dropbox.com/1/fileops/delete?root=auto&path=" + theFolderName + "&locale=" + locale
		  
		  // PERFORM SYNCHRONOUS POST
		  Dim API_DeleteFolder_Results_JSONString as String = Self.Post(Dropbox_API_URL,30)
		  
		  //  PARSE JSON RECEIVED RESULTS TO A DICTIONARY
		  Dim ItemToParse as New JSONItem
		  Dim API_DeleteFolder_Results_Dictionary as Dictionary
		  
		  API_DeleteFolder_Results_Dictionary = New Dictionary
		  ItemToParse.Load(API_DeleteFolder_Results_JSONString)
		  API_DeleteFolder_Results_Dictionary = Common_Module.JSONToDictionary(ItemToParse)
		  
		  Return API_DeleteFolder_Results_Dictionary
		  
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function API_Call_Delta(optional inCursor as String, optional inLocale as String, optional inPathPrefix as String, optional inIncludeMediaInfo as String) As Dictionary
		  // THIS METHOD PERFORMS THE DROPBOX API -  /delta
		  
		  // PREPARE THE PASSED PARAMETERS
		  Dim cursor as String = inCursor
		  Dim locale as String = inLocale
		  Dim PathPrefix as String = EncodeURLComponent("/"+inPathPrefix)
		  Dim includeMediaInfoBool as String = inIncludeMediaInfo
		  
		  // SET POST URL - /root/path
		  Dim Dropbox_API_URL as String = "https://api.dropbox.com/1/delta?path_prefix=" + PathPrefix + "&include_media_info=" + includeMediaInfoBool
		  
		  // PERFORM SYNCHRONOUS POST
		  Dim API_Delta_Results_JSONString as String = Self.Post(Dropbox_API_URL,30)
		  
		  //  PARSE JSON RECEIVED RESULTS TO A DICTIONARY
		  Dim ItemToParse as New JSONItem
		  Dim API_Delta_Results_Dictionary as Dictionary
		  
		  API_Delta_Results_Dictionary = New Dictionary
		  ItemToParse.Load(API_Delta_Results_JSONString)
		  API_Delta_Results_Dictionary = Common_Module.JSONToDictionary(ItemToParse)
		  
		  Return API_Delta_Results_Dictionary
		  
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function API_Call_PutFile(inFoldername as FolderItem, optional inLocale as String, optional inOverwrite as String, optional inParentRev as String, optional inAutorename as String, optional inFolderToPutFile as String) As Dictionary
		  // THIS METHOD PERFORMS THE DROPBOX API -  /files_put
		  // PLEASE NOTE THE DROPBOX CORE API /files_put HAS A MAXIMUM OF 150MB
		  
		  // PREPARE PASSED PARAMETERS
		  Dim locale as String = inLocale
		  Dim overwrite as String = inOverwrite
		  Dim parent_rev as String = inParentRev
		  Dim autorename as String = inAutorename
		  Dim folderToPutFile as String = inFolderToPutFile
		  
		  // PREPARE FILE
		  Dim theFile as FolderItem = inFoldername
		  Dim theFileStr as String
		  Dim theFileName as String = EncodeURLComponent(theFile.DisplayName)
		  Dim FileContentLength as Integer
		  
		  // CHECK FOLDERITEM AND VERIFY IT IS A FILE AND NOT A DIRECTORY
		  Dim isDirectory as Boolean = theFile.Directory
		  
		  // OPEN *FILE* AS A BINARY STREAM
		  If isDirectory = False Then
		    Dim ourBinaryStream as BinaryStream = BinaryStream.Open(theFile, False)
		    theFileStr = ourBinaryStream.Read(ourBinaryStream.Length)
		    ourBinaryStream.Close
		    FileContentLength = theFileStr.Len
		    
		  Elseif isDirectory = True Then
		    // TRIED TO UNSUCCESSFULLY CONVERT THE FOLDERITEM TO A BINARY STREAM - BAIL OUT
		    EXIT Function
		  End If
		  
		  // SET CONTENT AND CONTENT LENGTH HEADER
		  Self.SetRequestContent(theFileStr,"application/binary")
		  Self.SetRequestHeader("Content-Length", CStr(FileContentLength))
		  
		  // IF WE HAVE A PASSED A ROOT FOLDER TO PUT FILE THEN USE IT OTHERWISE DEFAULT TO AUTO
		  Dim subFolderName as String
		  Select Case folderToPutFile
		  Case ""
		    subFolderName = ""
		  Else
		    subFolderName = folderToPutFile
		  End Select
		  
		  // SET POST VARIABLES
		  Dim Dropbox_API_URL as String = "https://api-content.dropbox.com/1/files_put/auto/"+subFolderName+"/"+theFileName+"?param=val&locale=" + locale +_
		  "&overwrite=" + overwrite + "&parent_rev=" + parent_rev + "&autorename=" + autorename
		  
		  // PERFORM SYNCHRONOUS POST
		  Dim API_PutFile_Results_JSONString as String = Self.Post(Dropbox_API_URL,30)
		  
		  //  PARSE JSON RECEIVED RESULTS TO A DICTIONARY
		  Dim ItemToParse as New JSONItem
		  Dim API_PutFile_Results_Dictionary as Dictionary
		  API_PutFile_Results_Dictionary = New Dictionary
		  ItemToParse.Load(API_PutFile_Results_JSONString)
		  API_PutFile_Results_Dictionary = Common_Module.JSONToDictionary(ItemToParse)
		  
		  Return API_PutFile_Results_Dictionary
		  
		  
		  
		  
		End Function
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
		  
		  // SET SOCKET INFO
		  Self.Secure = True
		  Self.port = 443
		  Self.ConnectionType = 3 // TLSv1
		  
		  Try
		    // SET HEADERS
		    Self.SetRequestHeader("Accept", "*/*")
		    Self.SetRequestHeader("Accept-Encoding:","gzip,deflate,sdch")
		    Self.SetRequestHeader("User-Agent:","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.101 Safari/537.36")
		    Self.SetRequestHeader("Connection", "keep-alive")
		    Self.SetRequestHeader("Accept-Language", "en-US,en;q=0.8")
		    
		    // SET OAUTH TOKEN BEARER HEADER
		    Dim theAccessToken as String = DropboxOAUTHSocket.DropboxTokenResultsDictionary.Value("access_token")
		    Self.SetRequestHeader("Authorization:","Bearer "+theAccessToken)
		    
		  Catch
		    // WE DIDN'T RECEIVE THE PROPER AUTHORIZATION TOKEN
		  End Try
		End Sub
	#tag EndMethod


	#tag ViewBehavior
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
