# Keeping up-to-date with GitHub

This document will be subject to further updates, so if you have any questions or suggestions, feel free to communicate them through Slack, email, or office hours.

#### The scenario: 
You’re a student on MY472 who would like to make notes on the class materials or edit the exercises, yet also keep your local repository (the MY472 files stored on your laptop) up to date with any future changes that are made by the teaching team.

#### The problem: 
To update the MY472 materials one should Pull changes through GitHub Desktop (or equivalent). Unfortunately, since students are not listed as owners of the original lse-my472/lse-my472.github.io repo, the default behaviour is to overwrite any local changes you have made. This means you may lose your notes / exercise answers. You may have encountered the following screenshot when Pulling which encourages you to stash your changes: 

<img width="451" alt="image" src="https://user-images.githubusercontent.com/22916176/136827459-14abb310-f8f9-4721-a68a-e38ed2ccbb06.png">

If you never encounter this warning, you may not have to go ahead with the proposed solutions. It is theoretically possible to stash, pull, and partly restore/merge the stashed changes but keeping track of your own edits and teaching edits is difficult to do effectively. We can (mostly) automate this.

#### The solution(s):
You may have already found your own workaround to this (which we would be curious to hear), but we propose two main methods of making changes and keeping up to date: **_Making additional local copies_**, or **_Forking and merging from upstream_**. Forking is the preferred ‘proper’ Git method for doing things, but choose whichever workflow works for you. This element of version control is independent from the assignments and you do not need to use it when cloning / pushing 

## Making additional local copies
For this method, you keep the original local repo for MY472 on your computer and also make a full local copy of it using your regular file explorer copy + paste functionality. In truth this is not too different from stashing and restoring changes, but attempts to give you more reliable backup and tracking of where and when changes are made. The original repo on your computer remains linked to GitHub and you will keep it updated with any changes in class materials. The copied folder will not be linked to GitHub, and will not be automatically updated, but you are free to make changes to these files without risk of them being overwritten. You will, however, need to manually copy and paste any files that the teaching team have updated / changes of text within files into your duplicate folder.

<img width="451" alt="image" src="https://user-images.githubusercontent.com/22916176/136827741-36cf41b3-88da-4f27-8c3f-a8ff8b0a0ced.png">
 
## Forking and merging from upstream
Most of you will have already Cloned the lse-MY472/lse-my472.github.io repo to your local computer. This provides a copy of the materials linked to the original GitHub repository. Since you are not owners of the original repo, any changes you make cannot be pushed to the original repo. This also means that if we make any changes to a file and you want to Fetch & Pull them, the original materials will take priority and your edits will be overwritten.

To get round this situation we need to create a Fork. Forks allow you to experiment with your own changes (e.g. make notes) without affecting the original project. Once you have made a Fork you can “Fetch and Merge upstream changes”. This Fetches any changes we have made to the teaching materials (the ‘upstream’ repo) and Merges them with your own changes. You can then safely Push/Pull the updated materials to/from your own Forked repo on GitHub. In these instructions I have used an alternative GitHub account “test-lse”. Watch out for when we are working with lse-MY472/lse-my472.github.io vs the Forked test-lse/lse-my472.github.io repos!

### 1. Creating a Fork
There are two ways to do this, either creating a Fork from your local repo, or creating a fresh Fork. It is likely you will have already made some changes to your local repo, meaning when you open GitHub Desktop you will be faced with something that looks like this:

<img width="451" alt="image" src="https://user-images.githubusercontent.com/22916176/136827892-cc73543e-b720-4428-aa99-ab0ae0ce54f5.png">

Your changes will be listed in the left column, but you will be unable to Push them to the remote repo on GitHub.com as you do not own the original MY472 repo.

#### Create a Fork from local repo
When you are presented with the error message above, simply click cancel (i.e. do not stash changes and continue). GitHub Desktop then prompts you to create a Fork. 

<img width="451" alt="image" src="https://user-images.githubusercontent.com/22916176/136827950-0d8e545b-849f-428e-896b-ba189fa893dd.png">
 
Click “create a fork”, then “Fork this Repository”, then “Continue”

<img width="451" alt="image" src="https://user-images.githubusercontent.com/22916176/136827983-5854aca8-a693-4a5d-a38d-6645a0d45a6a.png"> <img width="451" alt="image" src="https://user-images.githubusercontent.com/22916176/136828089-e59529f7-01a4-4659-83cd-95916901d77a.png">

_Before_ you Pull any changes you can then “Commit to master”.
 
<img width="451" alt="image" src="https://user-images.githubusercontent.com/22916176/136828120-e3c97095-30c7-4645-b03e-75162957f842.png">

If you click “Pull origin” now, GitHub Desktop pulls the teaching team changes and Merges them with your local changes (note the message in the bottom left in the proceeding screenshot).
 
<img width="451" alt="image" src="https://user-images.githubusercontent.com/22916176/136828142-c3248879-869c-411f-9c27-651704ff64c6.png">

You can now Push the changes from your local Forked repo to your Forked repo on GitHub.com.

<img width="451" alt="image" src="https://user-images.githubusercontent.com/22916176/136828229-8f832c68-22bd-4613-b0c4-c0c483522284.png">

#### Create a fresh fork
Alternatively you can start with a fresh Fork. This creates a copy of the MY472 repo in your GitHub.com account which you can freely edit and keep updated (It is recommended to create a fresh Fork through the GitHub website). 

<img width="451" alt="image" src="https://user-images.githubusercontent.com/22916176/136828258-e6ea5b38-3dba-451e-9dc4-03f532dd4f86.png">

You can then navigate to your personal Fork on GitHub.com and open with GitHub Desktop. Note that this downloads a new folder. Once you have backed up or transferred any prior changes you have made, you can, in principle, delete your local copy of the original repo and now only work with your Fork.

<img width="451" alt="image" src="https://user-images.githubusercontent.com/22916176/136828292-037f81c9-07c3-4803-8ce3-b889ecbd9dd6.png">

### 2. Merging upstream changes

You will now have created a fork. Over time you will need to periodically get any further updates the teaching team make. Let’s say that you have made some local notes on, and that the teaching team have edited one of the Rmd exercise files. Here is where we sync (Merge) the teaching updates to your Fork, and Commit+Push your local changes to GitHub. 

In GitHub Desktop, Commit and Push any changes you have made on your Fork to GitHub.com.

<img width="451" alt="image" src="https://user-images.githubusercontent.com/22916176/136828349-dc1023f3-82f4-4f37-9383-75c24be86878.png"> <img width="451" alt="image" src="https://user-images.githubusercontent.com/22916176/136828372-d1c18f26-6599-45fd-b04a-d083b906e53c.png">

Then (you may need to click Fetch origin first), select “Current Branch” and click “Choose a branch to merge into master”.
 
<img width="451" alt="image" src="https://user-images.githubusercontent.com/22916176/136828556-9b914448-497c-4f56-9810-b757c7d9bcc4.png">
 
Select “upstream/master” and click “Create a merge commit” (there are some subtle differences in the kind of merge commit you can make, but the default is usually fine).

<img width="451" alt="image" src="https://user-images.githubusercontent.com/22916176/136828575-2fb230bc-4d30-4123-99ec-3161487b507b.png">

This syncs the original repo’s updates to your local Fork, which you can then push to your own GitHub.com account.
 
<img width="451" alt="image" src="https://user-images.githubusercontent.com/22916176/136828607-e500d7aa-f75a-43d2-8089-7d9783e15e7e.png">
 
Continue to repeat the “Merging upstream changes” step over the weeks to keep your Fork updated with your own edits and teaching team edits.
