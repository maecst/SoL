# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# COMP 4711 - Assignment #2 - Team SoL
#
# Members:
#       Michael Chodolak
#       Stephanie LaChapelle
#       Henry Kit Tan
#       Mae Yee
#
# Repo:
#       https://github.com/SoL-Photo/SoL
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

IMPORTANT NOTES:
================================================================================
To populate the tables in the database please run the "tables_setup.sql" script
which is located in the "scripts" folder (at same level as "application" folder).
Our database name is "SoL_Photography".

One of the merges we did on Saturday overwrote many changes we had done and we
were not able to revert the merge.  In the end, we had to do a hard reset and 
rollback to a previous commit state.  As a result, if you look at the graph in
Github it will look like not everyone contributed evenly, but this is not the
case.


Assignment Two Updates
================================================================================
- all photos have now been added to the Photos table in the database

- blog posts are now stored in the Blogposts table in the database

- most views are based off a template and we have removed the majority of extra html

- controllers have been made for all the views

- created an admin page

- blog posts can be added/deleted from the admin page 

- the content of a blog post can be added using the CKEditor rich text editor

- photos can be added/deleted from the admin page

- login view has been added


TO DO:

- let user know they were successful in adding/deleting photos/blogs
- login authentication

NOT WORKING:

- can't edit posts/photos; it just adds a new one to the database table
- file uploading not working


Assignment One Notes
================================================================================

1) We created a database and populated the Photos table with 10 nature photos.  The
nature view now shows those dynamically pulled photos.  Because we are not sure
we will be storing the photos in a table on the database -- you had mention 
pulling them from a folder location instead -- we did not implement this in our
other 3 subgallery views.

2) If you like, you can run the SQL script that generates the database and table.
It is located in the SoL/scripts/ folder.

3) The original web site has been put entirely inside the SoL/public/ folder or 
you can view the hosted version at http://www.cstprogram.ca/sliver

USE CASES:
================================================================================

1. Gallery/Blog Search

Actor: User

The user is browsing the website looking for a particular photo. They would
start by selecting the gallery page as starting point where all the photos might
be viewed. If the image(s) they are looking for do not appear on the top of
the list they would use the search button to attempt to find the one(s) they want.
This search button would provide a pop up overlay for the user to enter key words
to identify the photo types they wish to find. Upon hitting enter the overlay
will disappear and all the photos with tags to the search keywords will be displayed
in order of relevance. Thus the user's end goal of finding specific related photos
would be achieved.

The user is browsing the website looking at blog posts. Not all of them interest
the user. They want to filter out the ones that do not interest them while 
keeping the ones that do. Blog posts on the site will have associated tags. 
On the blog page there will be a filter of some sort that allows a user to select 
or deselect tags. This will filter the bogs to only include the selected tags, 
allowing for quick sorting and maintaining user interest and site flow.


2. Gallery View

Actor: User

The user enters the site looking to view the photos by the photographer. Starting
at the home page they navigate to the Gallery page using the navigation bar. Then
they may select sub galleries to view photos. Photos are loaded dynamically.


3. Blog View

Actor: User

The user enters the site looking to view the blogs by the photographer. Starting
at the home page they navigate to the Blog page using the navigation bar. Then
they may view the blogs and add comments using facebook/twitter accounts. 
Blogs are loaded dynamically.


4. Admin model

Actor: Admin/owner of web site

The admin/owner can login to an admin module and from there can monitor user posts
add/delete new blog posts and photos, and edit existing blog posts.



SITE MAP:
================================================================================

You can find a PDF with a diagram showing how the site (from the user/viewer)
standpoint is laid out.  The admin side would have a different UI and controls.

The PDF is located inside the main SoL directory and called "SoL_sitemap.pdf".
Or if you prefer, you can click on the link below to view it:

    https://github.com/SoL-Photo/SoL/blob/master/SoL_sitemap.pdf
