(howto:running)=
# Running the Annotation Tool

There are really three parts to running the annotation software: starting the
annotation tool the first time, starting it subsequent times, and connecting to
the tool once it's been started. The first time you start the software, you'll
need to perform some steps on GitHub then use Git to clone a repository. You'll
then download an image using the Docker command. Subsequent times that you
start the software will be largely the same, but you'll skip all the Git and
GitHub steps, and you won't have to wait while the docker image is downloaded.

(howto:running:firsttime)=
## Running the Annotation Tool the First Time
The first time you run the annotation tool, you'll need to start by performing
some steps on GitHub. The annotation tool is contained in a GitHub repository,
which we'll also use to keep track of the annotations you draw. You'll need to
start by forking this repository so that you have your own copy of it in which
you'll deposit your annotations.

To fork the repository (or "repo"), start by logging into GitHub then following
these steps.

1. Navigate to the repository for the DrawFAVA project:
   [`https://github.com/nbenlab/drawFAVA`](https://github.com/nbenlab/drawFAVA)
2. In the upper right portion of this page is a sequence of buttons, one of
   which is called "Fork". Press this button, which should take you to a page
   titled "Create a new fork". (If you can't find the button, just go to
   [this link](https://github.com/nbenlab/drawFAVA/fork).)
3. Make sure that your GitHub user ID is selected in the "Owner" field then
   press the big green "Create fork" button at the bottom.

The above steps should result in your own fork of the project's repository;
this copy of the repository can be found by navigating to its GitHub page:
`https://github.com/{{YOUR GITHUB USERNAME}}/drawFAVA`. For example, if your
GitHub username were `noahbenson`, then your repository would be at
`https://github.com/noahbenson/drawFAVA`.

Once you have created your fork, the following steps must be run in a shell.
In these steps, the variable `{{REPO PARENT PATH}}` is used several times; this
refers to the directory (folder) that you decide to put the project's
repository in on your computer. For example, on a Mac, you might choose to put
the project repository (which itself is a directory) on your desktop. In this
case, your repo parent path would be `~/Desktop`. If you aren't sure where to
put it, then it is fine to use just `~` as your repo parent path.

1. ```bash
   cd "{{REPO PARENT PATH}}"
   ```

   See the paragraph immediately above regarding the repository's parent path.
   For example, if your repository's parent path is `~/Documents`, you would
   enter:  
   `cd "~/Documents"`
2. ```bash
   git clone git@github.com:{{YOUR GITHUB USERNAME}}/drawFAVA
   ```
   
   For example, if your GitHub username were `noahbenson`, you would enter:  
   `git clone git@github.com:noahbenson/drawFAVA`
   
   This command will print out some text but it should not print an error
   message. If this is your first time running the command, it may print a
   message that mentions fingerprints and asks you to confirm if you are sure
   you know who you are communicating with. This is a standard message that is
   printed in case someone between you and GitHub is impersonating GitHub, and,
   as long as you have a reputable internet service provider (ISP), isn't
   usually anything to worry about. If you are worried about your ISP, then you
   can look up the codes [at GitHub's website](
   https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/githubs-ssh-key-fingerprints).
   If not, then it is safe to just type `yes` to this prompt.

   :::{warning}
   It is possible to clone GitHub repositories using their
   `https://github.com/...` addresses instead of their `git@github.com:...`
   addresses, and some GitHub users prefer to use them. We have not configured
   Git to use `https` authentication, so that method will not work here unless
   you have separately configured it.
   
   If you typed the `git clone` command as instructed above, you don't need to
   worry about this.
   :::
3. ```bash
   cd drawFava
   ```
4. ```bash
   docker compose up
   ```
   
   In order for this command to work, you must have Docker installed, and the
   Docker engine or Docker daemon must be running. The first time you run this
   command, it will take a significant amount of time as it needs to download
   a large virtual machine image that contains all of the project data. On
   subsequent runs of this command, you won't need to wait for the download.


(howto:running:nexttime)=
## Running the Annotation Tool Subsequent Times
Once you've started the annotation tool once, you won't need to run any of the
`git` commands in the previous section, and the `docker compose up` command
won't need to download a large image. Just the following steps are required,
all of which are run in a shell.

1. ```bash
   cd "{{REPO PARENT PATH}}/drawFAVA"
   ```
   
   See the paragraph above regarding the repository's parent path.
   For example, if your repository's parent path is `~/Documents`, you would
   enter:  
   `cd "~/Documents/drawFAVA"`

2. ```bash
   docker compose up
   ```

(howto:connecting)=
## Connecting to the Annotation Tool

Once you have started the annotation tool, it will stay running as long as you
keep the terminal/shell open on your computer. The tool runs a web server
inside the Docker container that you can connect to by pointing your web
browser at [`http://localhost:8181`](http://localhost:8181).

To shut down the annotation tool, you can press control+C in the terminal that
is running the `docker compose up` command or close the terminal/shell.
