#!/bin/bash 


#####

blogcount=$(cat blog.count)  # Blog counting
blogtitle=$(cat blog.title)  # Blog Title
date=$(date +"%Y-%m-%d-")    # Date to be used in File Name
#date="2023-02-11-"
FileName=$date$blogcount".md"

#####

echo "---" > $FileName
echo "layout: post" >> $FileName
echo "title: $blogtitle" >> $FileName
echo "published: true" >> $FileName
#echo "categories: Add-to-Carts!" >> $FileName
#echo "categories: Movies" >> $FileName
#echo "categories: Cycling" >> $FileName
#echo "categories: Beach_Tennis" >> $FileName
#echo "categories: Golf" >> $FileName
#echo "categories: Stays" >> $FileName
#echo "categories: Devour" >> $FileName
#echo "categories: Nail Arts" >> $FileName
#echo "categories: Coastlines" >> $FileName
#echo "categories: Tunes" >> $FileName
#echo "categories: Minimalism" >> $FileName
echo "---" >> $FileName

cat note.txt >> $FileName

#cp -Rav $FileName POSTS/
#cp -Rav create_post.sh backup-create_post.sh

#cp -Rav $FileName $FileName"-cp"

#############
## GIT HUB ##
#############

git add $FileName

echo " +++++++++++++++++++++++++++++++++++++ "
echo " git add $FileName"
echo " +++++++++++++++++++++++++++++++++++++ "
echo " +++++++++++++++++++++++++++++++++++++ "

git commit -m "update $blogtitle"

echo " +++++++++++++++++++++++++++++++++++++ "
echo " git commit $FileName"
echo " +++++++++++++++++++++++++++++++++++++ "
echo " +++++++++++++++++++++++++++++++++++++ "

git push

echo " +++++++++++++++++++++++++++++++++++++ "
echo " BLOG: $FileName"
echo " TITLE: $blogtitle"
echo " +++++++++++++++++++++++++++++++++++++ "
echo " +++++++++++++++++++++++++++++++++++++ "
echo " +++++++++++++++++++++++++++++++++++++ "
echo " +++++++++++++++++++++++++++++++++++++ "
echo " +++++++++++++++++++++++++++++++++++++ "

rm blogpost
link $FileName blogpost



