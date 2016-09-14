# Purpose

This bash script lets you automate the commands to unzip a new Hack Reactor sprint (for HRR19).

Although this script is pretty basic (it just automates the bash commands you would type in yourself), if you
are risk adverse, you maybe shouldn't use this.

Although I've 'tested it', that means I've just used it myself to initialize a repository.

So please keep in mind there may be some bugs based on your enviroment

# Set up
Once you download this script, you have to place it in a PATH directory where your terminal can find it.

To figure out out directories in your console's path run this on your terminal

`echo $PATH`

This will print out a list of directories seperated by a ':' that the console looks up.  Place the .sh file in one of these directories.

Next open up the sprint_workflow.sh file and input your local variables.

You are required to fill in the following variables:

* **downloadDir** where items are downloaded by default; in OSX it's ~/Downloads
* **targetDir** the directory you want to store your sprint folders
* **remoteName** the name you want your remote to be
* **githubURL**the url of your forked sprints repository

# Running the command

1. **Download the repository for learn.makerspace.com**

Your browser should automatically download the sprint repository into your default Downloads directory, which you specified in the set up phase.

2. **Run the script with your command line**

To run the command you have to give the script one argument from the command line.
The argument is the name of the individual sprint (what it says between course.[SPRINT-NAME].exercise in the downloaded zip folder)

NOTE: make sure the name of the sprint matches exactly the name of the zip sprint code that you just downloaded.

For example the command to run the workflow for the data structures sprint is:

`sprint_workflow.sh data-structures`

It may also be a good idea to edit your ~/.bash_profile or ~/.bashrc file to give this script an alias so you don't have to type as much.

For example on my computer I have the below in my .bashrc:
`alias sprint='sprint_workflow.sh'`

Which allows me to just type:

`sprint data-structures` to run this script.

3. **Do something with all the time saved**

At the end of script execution you should have:
1.the sprint code unzipped
2. saved in the directory that you want it
3. the git repo initialized
4. the git repo on the branch with the project name i.e. course.data-structures.exercises
5. The remote repository connected to your local git reop.

You're all ready to set up Floobits (a different story) and start hacking!!!!

# Troubleshooting

**Permission Denied**
There may be a linux permissions issue with what users are allow to access this file.  To fix this just use in the directory that you place the file:

`chmod 755 sprint_workflow.sh`

You should probably look up what this does before running the command

**bash: command not found**
Make sure you placed the script in one of the directories in your systems PATH variable. To look up which directories you have use:

`echo $PATH`
