#!/bin/bash

### THIS SCRIPT IS TO PUBLISH POST

###########################
# Blogpost Name and Title #
###########################
Blog_Post_Count="Day113"
Title_Blog="74th Deal"

###############
# DATE Today! #
###############
#date=$(date +"%Y-%m-%d -- ")

###############
# OTHER Date! #
###############
date="2023-02-27 -- "


#31+5

#################################
# SET BLOG TITLE AND BLOG POST  #
#################################
echo $Blog_Post_Count >blog.count
echo $Title_Blog >blog.title


##### THIS IS FOR THE PAGE ######
page="blog.md"                    # Main page blog.md
blogmeta="page.blog.meta"         # Meta of md file
bloglist="page.blog.list"         # order list of blogs
bloglatest="page.blog.latest"     # Latest blog
blogfinal="page.blog.final"       # Final list of blog
blogmd="blog.md"                  # blog.md in _post path
time=$(date +"%Y-%m-%d-%H-%M")

#################################
# BACKUP blog.md file to PAGES/*#
#################################
cp -Rav ../images/$page PAGES/$page.$time

########################################
# BACKUP page.blog.list file to PAGES/*#
########################################
cp -Rav $bloglist PAGES/$bloglist.$time

############################
# New list for latest blog #
############################
echo "$date[$Title_Blog](https://rellinrg.github.io/$Blog_Post_Count/)" >$bloglatest
echo "<br>" >>$bloglatest

#############################################
# Add new list to the existing listing blog #
#############################################
cat $bloglist >>$bloglatest

################################################
# Build the new blog.md and backup new listing #
################################################
cat $blogmeta >$blogmd              # Copy meta/header to local blog.md
cat $bloglatest >>$blogmd           # Add the new listing
cat $bloglatest >$bloglist

########################################
# Push Final blog.md in git repository #
########################################
cp -Rav $blogmd ../images/              # Copy over the final file to main blog.md page
git add ../images/$page
git commit -m "update blog.md"
git pull
git push

echo $Blog_Post_Count
echo $Title_Blog
