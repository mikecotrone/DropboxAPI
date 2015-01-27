Dropbox Core API SDK
=============================

Language: Xojo 2014r2.1 and below (Desktop)

Author: Mike Cotrone (mikec@intelligentvisibility.com)

Version: 1.0.1

Licensed: BSD-3-Clause - Please use at your own risk

What is this Project?

    This open source project came from the need of having an implementation of the Dropbox Core API. 
    This project is a work in progress as I am not implemented every API call in the Dropbox Core API to start. 

What type of an implementation did you use?

    I used the Dropbox Core API RESTful implementation using oAuth 2.0
    
Supported Dropbox Core API Calls (as of v.1.0.1)

    /oauth2/authorize - OAuth 2.0 authorization flow
    /account/info - Retrieves information about the user's account
    /files_put - Uploads a file using PUT semantics
    /fileops/create_folder - Creates a folder
    /fileops/delete - Deletes a folder
    /delta - A way of letting you keep up with changes to files and folders in a user's Dropbox
    
    
How do I get started using it?

    This project is a self functioning demonstration that is designed to test your Dropbox developer App.
    The demo window uses buttons to make first authorize and then make the API calls using a dynamic object 
    class structure.
    
What do I need from Dropbox to get this to work?

    1. You will need to setup a development account - https://www.dropbox.com/developers
    2. You will need to create a Dropbox app using the App Console - https://www.dropbox.com/developers/apps
    3. READ the Dropbox Developer Branding Guide! - https://www.dropbox.com/developers/reference/branding
    
Future version releases?

    This is an open source project and I will be adding to this implementation with more Core API calls as
    time permits.
    
I found a bug, what now?

    Thank you and please report your findings at https://github.com/IntelligentVisibility/DropboxAPI/issues
    
  
  
