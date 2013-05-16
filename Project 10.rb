# Project 10:



# 1. Study up on ruby regular expressions


# ----------------I just did--------------------




# 2. Use a regular expression to get the last number in the following URL’s:



# http://www.google.com/a/5    #should return 5
  
# C:\Users\Sedinirina>irb --simple-prompt
URL = "http://www.google.com/a/5"
#=> "http://www.google.com/a/5"
URL.scan(/\d/) {|n| puts n}
#5 # it returns 5
#=> "http://www.google.com/a/5"
#>>

# http://www.yahoo.com/a/19   #should return 19

# C:\Users\Sedinirina>irb --simple-prompt
URL = "http://www.yahoo.com/a/19"
# => "http://www.yahoo.com/a/19"
URL.scan(/\d+/) {|h| puts h}
# 19 # it returns 19
# => "http://www.yahoo.com/a/19"
# >>
  
  
  
  
# 3. Use a regular expression to get the price from the following string



# <div class=”price”>Price: $10</div>  #should return 10 (not $10)


# C:\Users\Sedinirina>irb --simple-prompt
a = "<div class=price>Price: $10</div>"
# => "<div class=price>Price: $10</div>"
a.scan(/\d+/) {|o| puts o}
# 10 # it returns 10 (not $10)
# => "<div class=price>Price: $10</div>"
# >>


# <div class=”price”>Price: $25</div> #should return 25 (not $25)

# C:\Users\Sedinirina>irb --simple-prompt
b = "<div class='price'>Price: $25</div>"
# => "<div class=”price”>Price: $25</div>"
b.scan(/\d+/) {|y| puts y}
# 25 # it returns 25 (not $25)
# => "<div class=”price”>Price: $25</div>"
# >>



# 4. Use a regular expressions to get all the email addresses in the following String



# <html>
#   <body>
#     Hello my name is Steve, my email address is steve@capshare.com . I used to have an email address that was steve@hotmail.com but it was also taken. Sometime I try to fool people by typing it out like this: steve at gmail.com
#   </body>
# </html>

# Your program should return an array of the email addresses it finds. It should find all three and look like this:
# [‘steve@capshare.com’, ‘steve@hotmail.com’, ‘steve@gmail.com’]



# C:\Users\Sedinirina>irb --simple-prompt
a = "<html>
   <body>
     Hello my name is Steve, my email address is steve@capshare.com .
     I used to have an email address that was steve@hotmail.com
     but it was also taken. Sometime I try to fool people by typing
     it out like this: steve at gmail.com
   </body>
</html>"
# => "<html>\n  <body>\n    Hello my name is Steve, my email address is steve@caps
# hare.com . I used to have an email address that was steve@hotmail.com but it was
#  also taken. Sometime I try to fool people by typing it out like this: steve at
# gmail.com\n  </body>\n</html>"
a.gsub!(" at ", "@")
# => "<html>\n  <body>\n    Hello my name is Steve, my email address is steve@caps
# hare.com . I used to have an email address that was steve@hotmail.com but it was
#  also taken. Sometime I try to fool people by typing it out like this: steve@gma
# il.com\n  </body>\n</html>"
a.scan(/\w+\@\w+\.\w+\b/)
# => ["steve@capshare.com", "steve@hotmail.com", "steve@gmail.com"]
# >>