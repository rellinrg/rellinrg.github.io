#!/bin/bash 


#####

blogcount=$(cat blog.count)  # Blog counting
blogtitle=$(cat blog.title)  # Blog Title


##############
# Date TODAY #
##############
#date=$(date +"%Y-%m-%d-")    # Date to be used in File Name
#time=$(date +"%d  %m %Y")    # Date to be used in blogpost Date of posting

##############
# OTHER DATE #
##############
Y="2023"
M="02"
m="Feb"
d="27"
date="$Y-$M-$d-"
time="$d $m $Y"



FileName=$date$blogcount".md"

############################
## Update header of post  ##
############################

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
#echo "categories: Nailed-It" >> $FileName
#echo "categories: Coastlines" >> $FileName
#echo "categories: Tunes" >> $FileName
echo "categories: Minimalism" >> $FileName
#echo "categories: Add-to-Carts!" >> $FileName
#echo "categories: Journey" >> $FileName
#echo "categories: Wellness" >> $FileName
echo "---" >> $FileName
echo $time >> $FileName
echo "<br>" >> $FileName
echo "<br>" >> $FileName


##########################
## Update body of post  ##
##########################
cat note.txt >> $FileName

###########################
## Date used for backUp  ##
###########################
bDate=$(date +"%Y-%m-%d-%H-%M")

######################
## Back-Up blogpost ##
######################
cp -Rav $FileName PAGES/

######################
## Back-Up scripts  ##
######################
script1="publish.sh"
script2="create_post.sh"

cp -Rav $script1 PAGES/$script1.$bDate
cp -Rav $script2 PAGES/$script2.$bDate

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



