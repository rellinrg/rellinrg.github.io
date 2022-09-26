### THIS SCRIPT IS TO PUBLISH POST

Blog_Post_Count="Blog_Post4"
Title_Blog="Catch up with Claire"




echo $Blog_Post_Count >blog.count
echo $Title_Blog >blog.title



##### THIS IS FOR THE PAGE ######


page="blog.md"
date +"%Y-%m-%d -- [$Title_Blog](https://rellinrg.github.io/$Blog_Post_Count/)" >>../$page
echo "<br>" >>../$page


git add ../$page
git commit -m "update blog.md"
git push




##### THIS IS TO RUN THE SCRIPT #######
sh create_post.sh
