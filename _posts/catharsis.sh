### THIS SCRIPT IS TO PUBLISH POST
##### THIS IS FOR THE PAGE ######
page="catharsis.md"                    # Main page blog.md
blogmeta="catharsis.meta"         # Meta of md file
bloglist="catharsis.list"         # order list of blogs
bloglatest="catharsis.latest"     # Latest blog
blogfinal="catharsis.final"       # Final list of blog
blogmd="catharsis.md"                  # blog.md in _post path



cp ../$page $page.$date           # Back UP copy of main blog.md file

cat $blogmeta >$blogmd            # Copy meta to local blog.md

cat journal-write.txt >$bloglatest   # Latest blog file

cat $bloglatest >$blogfinal      # Copy latest blog file to final list

echo "<br>" >>$blogfinal         # Add space

cat $bloglist >>$blogfinal       # Add latest to last list

cat $blogfinal >> $blogmd        # Add the list to blog.md

echo "<br>" >$bloglist          # Add space

cat $blogfinal >> $bloglist       # Update the page.blog.list with the latest

echo "<br>" >>$bloglist          # Add space

cp $blogmd ../$page              # Copy over the final file to main blog.md page



# PUSH IN GIT REPOSITORY

git add ../$page
git commit -m "update catharsis.md"
git push



