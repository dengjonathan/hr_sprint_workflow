# make sure you keep the quotation marks in case some of your directories have spaces/ special characters
downloadDir='FILL_ME_IN' # where items are downloaded by default; in OSX it's ~/Downloads
targetDir='FILL_ME_IN' # the directory you want to store your sprint folders
remoteName='FILL_ME_IN' # ALERT!! change myFork to the name you want your remote to be
githubURL='FILL_ME_IN' # and the github url to the url of your sprints repo (Should be github.com/YOUR NAME/ 2016-09-sprints)

# this works in OSX - windows might have to replace the unzip command with some other tool
unzip -n $downloadDir/course.$1.exercise

# move the unzipped folder from you Downloads directory to the target folder you want to store it in
mv "$downloadDir"/course.$1.exercise $targetDir

# cd into the folder
cd "$targetDir"/course.$1.exercise

./init #binary command within the project folder you downloaded, created by Hack Reactor

# add the remote repository and name it whatever you specified in my name
git remote add $remoteName $githubURL

# do the first push of your project folder to the remote repository
git push $remoteName course.$1.exercise