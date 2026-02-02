(howto:setup)=
# Software Prerequisites

This page documents the steps necessary to be able to use the annotation
software that is used in this project to annotate the functional visual area
boundaries and to submit them to the project repository. In order to get
started, you must perform the following two steps, both of which are detailed in
the sections below.

1. Install software prerequisites.
2. Sign up for GitHub and configure Git.


(howto:prereqs)=
## Software Prerequisites

In order to use the annotation software for this project, you must have a few
pieces of software installed. These are [Docker](https://docker.com/),
[git](https://git-scm.com/), and a POSIX-compatible shell. Instructions for
installing each of these are given below. You will also need a contemporary web
browser.

(howto:prereqs:docker)=
### Installing Docker
Docker is a virtual machine tool that allows us to package an entire miniature
operating system, including complex software requirements up into a "docker
image" that can then be run on any computer. Docker lets you run the annotation
tool without having to install a large number of other pieces of sftware.

[Installation instructions for Docker can be found here](
https://www.docker.com/get-started/). Once you have installed Docker, make sure
that it is running; you can typically tell this because of a small icon that
looks like a whale with crates stacked on top of it in your OS dock or menu.

For more information on Docker, what it is, and how to use it, see the
[Software Carpentry (incubator) Docker lesson](
https://carpentries-incubator.github.io/docker-introduction/).


(howto:prereqs:shell)=
### The BASH Shell
A "shell" is a command-line interface for interacting with your computer. The
term shell comes from the design of the Unix and Linux operating systems, in
which the "kernel" is the low-level core part of the operating system that
manages all the computer's resources, users, and processes, and the "shell" was
the layer around the kernel that allowed users to interact with it. The BASH
shell, which is a particular flavor of shell (there are several, but BASH is
among the most common). We require a shell primarily in order to interact
directly with the Docker and Git tools.

[Installation instructions for installing the BASH shell can be found here](
https://carpentries.github.io/workshop-template/install_instructions/#shell). Make
sure you know how to open a new terminal.

BASH has its own unique language for interacting with the computer, and it can
be very powerful and useful. To learn more about BASH and how to use it, see
the [Software Carpentry Shell lesson](
https://swcarpentry.github.io/shell-novice/).

(howto:prereqs:git)=
### Installing Git
Git is a tool for syncronizing repositories of computer code and certain kinds
of text data. In this project, we will use git to manage the code files for the
project and the files that save the annotations that you draw. We will use Git
to syncronize your annotations with GitHub, which will store and archive them.

[Installation instructions for installing the Git can be found here](
https://carpentries.github.io/workshop-template/install_instructions/#git).

Git is a critical tool in any profession or field where software is
involved. For more information on Git and GitHub, see the
[Software Carpentry Git lesson]( https://swcarpentry.github.io/git-novice/).


(howto:github)=
## Signing Up for GitHub and Configuring Git
[GitHub](https://github.com/) is a website that acts as a central repository
for distributed git projects. It allows users around the world to collaborate
on code and text documents in real time while keeping track of the precise
history of every edit and managing conflicting edits. Git is the primary tool
for communicating with GitHub (along with GitHub's website).

To participate in this project, you will need to first sign up for GitHub,
which can be done at [github.com](https://github.com/). **Please keep track of
the email you used to sign up for GitHub as well as your GitHub username.**

Once you have signed up for GitHub, you can configure the installation of Git
on your computer to know your user settings and to be authenticated to connect
to GitHub as you. This requires running a few commands in the shell, so you
must have a [shell installed](howto:prereqs:shell) already. The steps to
configure Git follow. Note that you will only need to run these instructions
once on each computer on which you install the software; after running the
commands, local copies of the tools will remember the settings.

:::{admonition} Shell Commands
:class: important
This site uses a particular kind of format to describe shell commands. Shell
commands that you should type are always put verbatim in a code-block with a
uniform-width font, making them easy to recognize. Additionally, if there is
part of the command that you should replace with some other text, that part of
the command is surrounded by double-curly bracers.

For example, take the following command:
```bash
git config --global user.email "{{YOUR GITHUB EMAIL}}"
```

If the email you used to sign up for GitHub was `n@nben.net`, then the above
block would mean that you should actuall enter into the shell the command  
`git config --global user.email "n@nben.net"`  
then press enter.
:::

1. Open a new terminal/shell.  
   You'll need to run all of the commands that follow in the shell.
2. ```bash
   git config --global user.name "{{YOUR NAME}}"
   ```
   For example, if your name were `Noah C. Benson`:  
   `git config --global user.name "Noah C. Benson"`
3. ```bash
   git config --global user.email "{{YOUR GITHUB EMAIL}}"
   ```
   For example, if the email you used to sign up for GitHub were
   `n@nben.net`:  
   `git config --global user.email "n@nben.net"`
4. ```bash
   git config --global init.defaultbranch main
   ```
   You can copy and paste that command exactly as is.
5. ```bash
   git config --global core.editor nano
   ```
   You can copy and paste that command exactly as is.
6. ```bash
   git config --global pull.rebase false
   ```
   You can copy and paste that command exactly as is.
7. **If you are on Windows**, run:
   ```bash
   git config --global core.autocrlf true
   ```
   **If you are on Mac or Linux**, run:
   ```bash
   git config --global core.autocrlf input
   ```
   You can copy and paste whichever command is appropriate for your
   operating system exactly as is.

The above instructions configure the `git` tool; you should be able to see the
configuration items you have set after running the above commands by typing
`git config --list`.

The only remaining piece of the configuration is the authentication. To do this
we use a tool called `ssh`, which stands for secure shell (a set of tools and
protocols for securely communicating between computers). These tools enable us
to send and receive encrypted communications to/from GitHub. To be able to
exchange encrypted messages, we must give GitHub a public key. The instructions
below step through generating this key and providing it to GitHub.

1. In a new shell or continuing in the previous shell (it doesn't matter),
   enter the following commands.
2. ```bash
   mkdir -p ~/.ssh
   ```
   
3. ```bash
   cd ~/.ssh
   ```
   
4. ```bash
   [ -r id_ed25519.pub ] && echo skip
   ```
   
   If the above command prints out the string `skip` on a blank line, then skip
   the next step and go straight to step 6; otherwise continue on to step 5.
   
5. ```bash
   ssh-keygen -t ed25519 -C "{{YOUR GITHUB EMAIL}}"
   ```
   
   For example, if the email you used to sign up for GitHub were
   `n@nben.net`:  
   `ssh-keygen -t ed25519 -C "n@nben.net"`
   
   The above command will print a few messages and prompt you with a few
   questions. You should answer as follows:
    * When it asks you in which file to save the key, you should just press
      enter (it's default location is fine).
    * When it asks for a passphrase, you should typically just press enter. The
      only time you would want to put a passphrase on this key is when you do
      not have your own user account on your computer or when you do not trust
      your computer's administrator. If you do put a passphrase, you will need
      to provide it every time you issue a Git command that communicates with
      GitHub.
    * When it asks you to repeat your passphrase just push enter again (or type
      a passphrase again, if you opted to do so before).
    
   Once you have entered the prompts, it will print some text art and finish.
6. ```bash
   cat id_ed25519.pub
   ```

   The above command will print a bunch of characters that mostly look like
   nonsense. This is a text representation of your public key. (It is always
   safe to share your public key, but not your private key, which is in the
   file `id_ed25519`, without the `.pub` ending.) The line should look
   something like this:
   
   `ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIJOB87L9EnoegODyO8MGSogiod1OCcuNTaDrxL3p8Op2 n@nben.net`

   Copy this entire line including the email address at the end from your
   shell; you may have to highlighting the line with your mouse then right
   click on the text to copy.
   
7. Go back to your web browser and navigate to
   [`https://github.com/settings/keys`](https://github.com/settings/keys). Log
   into GitHub if you are prompted to. (This page can also be found by clicking
   on your profile icon in the upper right of the GitHub web interface,
   selecting the "Settings" item about half way down the menu, then selecting
   the "SSH and GPG Keys" item in the menu on the left.)
8. Click the big green "New SSH Key" button in the upper right.
9. In the "Title" box put a name that tells you what computer you have made
   this key for; the title doesn't really matter except for you to be able to
   know which key to delete if, for example, your computer is stolen.
10. Paste the public key line you copied in step 6 into the "Key" box. Make
   sure that the `ssh-ed25519` at the beginnign and the email address at the
   end are all included.
11. Click the big green "Add SSH Key" button at the bottom.

Once these steps have been completed, you should be able to use git for this
project seamlessly.
