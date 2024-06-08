## How this works in a webapp

user login into application

Step 1
```text
user make a post 
user post gets stored in a database of table named POST
where the user_id is foreign key to know the user post
```

Step 2
```text
another user logins
```

Step 3
```text
The another user comments in the post
in the comment table user_id is stored 
also the post id is stored 
why so because we must need a user_id and post_id 
to track the other comment
```

step 4
```text
works same as comment
```

step 5
```text
Follow table
here follow_id works as a primary key
get all follower id from follower_id row can work to get
all the followers list
```


## Schema of the social media platform
```text
User
- user_id (primary key)
- name
- email
- password

Post
- post_id (primary key)
- user_id (foreign key)
- text
- date

Comment
- comment_id (primary key)
- user_id (foreign key)
- post_id (foreign key)
- text
- date

Like
- like_id (primary key)
- user_id (foreign key)
- post_id (foreign key)
- date

Follow
- follow_id (primary key)
- follower_id (foreign key)
- followee_id (foreign key)
- date
```

## ERD
![erd](https://github.com/vectorsigmaissomewhere/Database/blob/main/QuickDesignADatabase/Niche/Social%20Networking%20Site/Basic%20ecommerce%20website%20database/imagefile/1_RYJzuLSqpPZYBySld74o3A-ezgif.com-webp-to-png-converter.png)
