## How this

This will be updated in the evening today


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
![erd](https://github.com/vectorsigmaissomewhere/Database/blob/main/QuickDesignADatabase/Niche/Social%20Networking%20Site/Basic%20ecommerce%20website%20database/imagefile/1_RYJzuLSqpPZYBySld74o3A-ezgif.com-webp-to-png-converter.png')
