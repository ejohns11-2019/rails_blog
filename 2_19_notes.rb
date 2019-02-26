#notes:
#web works by using CRUD actions
  #able to Create
  #able to Read
  #able to Update
  #able to Delete/destroy

  #HTTP(s) - s means secure
  #how browser communicates or how it transfers

  #HTTP Verbs (ie. requests)
  #create = post
  #read = get
  #update = put/patch
  #destroy = delete

  #get - always the default, is implied
    #return, HTML, XML, JSON
  #post - have to pass in parameters (ie. key/value pairs)
  #put/patch - need to pass in parameters, need ID for what want to update
    #without ID updates everything in browser
  #delete - requires ID to know what to delete

  #status codes - when an http request is made responds with
  #200 range successful
  #300 range redirection
  #400 client error ex. 404 page online for Wendys
  #500 server error

  #client vs. server side
    #clinet side is the front end side for users
    #server side is the backend that makes front end function

#Ways to make a request:
#cURL - in the command line of terminal
#AJAX/Fetch/Axios - coding library that handles request for us
  #make request and immediatley returns
#Browser - the most common. has limitations

#request help you get information, post it and delete it
#when get information can loop it to get the information need and be able to use

#GIT

#project manager - stores different versions of your project
#allows for collaboration

#Note: Git and Github are 2 DIFFERENT things
  #Git is the technology you use
  #Github is the hosting website
  #Bit Bucket, GitLab is an alternative to Github
  #brew install git installs git on computer
  #pbcopy < ~/.ssh/id_rsa.pub -ssh is the identifier for my computer, pbcopy copies it to computer

  #anything in gitignore file will not be pushed up to github

#any time create a new project should be a new git repository

#Best Practices
#1. never make a system directory a git repository (downloads, desktop, users/username, etc)
  #jsut make sure system directories are git repositories
#2. never create a git repository inside of a git repository
  #single project is git repositiory
#3. every project is git repository
#4. if you accidentally creat a git repo shouldn't ahve can remove
  #the .git/ folder in that directory

  #ls -a shows hidden files - if delete the .git file here it will delete the git repository
  #git init initializes a git repository
  #git status tells what git knows and what it doesn't know
  #gitignore in root directory pertains to whole computer
  #gitignore in project file pertains to just that file

  #git add . - this tracks all the files and folders in project
  #to track changes git commit -m "" - inside the string labels what you did at that time
    #less than 50characters and present tense insdie string
  #branch is location of where pushing code
  #to see whole history of changes git log
    #prints out all commmits, who did it and when
    #to see cleaner history git log --oneline gives brief summary

  #always run code to see if works before pushing up to github
  #git commit -m ' ' label that version of code

  #in vim press i to write
  #git commit --ammend to edit
  #esc to get out of insert mode
  #shift colon wq to exit

  #to reset a git commit git reset HEAD main.rb with
  #git checkout main.rb will take us to previous version
  #git reset --hard HEAD will delete the previous

  #GIT FLOW
  #git init - once per project
  #git add . - adds all files
  #git commit -m '' - label it
  #do git commit -m '' - everytime at good stopping pt

  #git remote add origin (copy ssh here)
  #git remote -v
  #only do remote step once per project
  #git push origin master
  #git clone (copy ssh) to copy other peoples code
