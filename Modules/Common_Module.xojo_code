#tag Module
Protected Module Common_Module
	#tag Method, Flags = &h0
		Function JSONToArray(data As JSONItem) As Variant()
		  dim r() as Variant
		  
		  
		  dim ub as integer = data.Count - 1
		  for i as integer = 0 to ub
		    dim value as Variant = data( i )
		    
		    if value IsA JSONItem then
		      
		      dim j as JSONItem = JSONItem( value )
		      if j.IsArray then
		        r.Append JSONToArray( j )
		      else
		        // NEED TO CHECK FOR ERROR KEY
		        r.Append JSONToDictionary( j )
		      end if
		      
		    else
		      
		      r.Append value
		      
		    end if
		    
		  next i
		  
		  
		  return r
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function JSONToDictionary(inJSONItem as JSONItem) As Dictionary
		  // THIS FUNCTION TAKES INPUT FROM A DIRECTORY AND RETURNS A DIRECTORY
		  
		  dim r as new Dictionary
		  
		  dim names() as string = inJSONItem.Names
		  
		  for each name as string in names
		    
		    dim value as Variant  = inJSONItem.Value( name )
		    
		    if value IsA JSONItem then
		      
		      dim j as JSONItem = JSONItem( value )
		      
		      if j.IsArray then
		        r.Value( name ) = JSONToArray( j )
		        
		      else
		        r.Value( name ) = JSONToDictionary( j )
		      end if
		      
		    else
		      r.Value( name ) = value
		      
		    end if
		    
		  next
		  
		  return r
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		DropboxAPICallSocket As Dropbox_API_Calls
	#tag EndProperty

	#tag Property, Flags = &h0
		DropboxOAUTHSocket As Dropbox_oAuth_Socket
	#tag EndProperty

	#tag Property, Flags = &h0
		Dropbox_Client_ID As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Dropbox_Redirect_URI As String
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
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
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
