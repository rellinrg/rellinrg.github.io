#!/bin/bash

### THIS SCRIPT IS TO PUBLISH POST

Blog_Post_Count="Day101"
Title_Blog="Its a Nightmare!"

#31+5


### SET BLOG TITLE AND BLOG POST ####
echo $Blog_Post_Count >blog.count
echo $Title_Blog >blog.title




##### THIS IS FOR THE PAGE ######
page="blog.md"                    # Main page blog.md
date=$(date +"%Y-%m-%d-%T")       # Date
blogmeta="page.blog.meta"         # Meta of md file
bloglist="page.blog.list"         # order list of blogs
bloglatest="page.blog.latest"     # Latest blog
blogfinal="page.blog.final"       # Final list of blog
blogmd="blog.md"                  # blog.md in _post path



#cp -Rav ../image/$page PAGES/$page.$date    # Back UP copy of main blog.md file

#cat $blogmeta >$blogmd            # Copy meta to local blog.md

#date +"%Y-%m-%d -- [$Title_Blog](https://rellinrg.github.io/$Blog_Post_Count/)" >$bloglatest   # Latest blog file

#cat $bloglatest >$blogfinal      # Copy latest blog file to final list

#echo "<br>" >>$blogfinal         # Add space

#cat $bloglist >>$blogfinal       # Add latest to last list

#cat $blogfinal >> $blogmd        # Add the list to blog.md

#cat $blogfinal > $bloglist       # Update the page.blog.list with the latest

#cp $blogmd ../images/$page              # Copy over the final file to main blog.md page

#cp -Rav publish.sh backup-publish.sh

# PUSH IN GIT REPOSITORY

#git add ../images/$page
#git commit -m "update blog.md"
#git push

git pull

#rm *cp

