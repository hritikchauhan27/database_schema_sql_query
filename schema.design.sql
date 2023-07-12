-- //User should be able to add comment on the posts.

INSERT INTO
  comments(comment_id, user_id, post_id, c_content, c_date)
VALUES(1, 10, 100, "First comment", "12,july,2023");

-- //User should be able to edit comment on the posts. 

UPDATE comments
SET c_content = "First comment update"
WHERE comment_id=1;

--// User should be able to remove the comment from the posts

DELETE FROM
  comments
WHERE
  comment_id = 1;

--// User should be able to add likes on the comments.  

INSERT INTO
  likes(like_id, user_id, comment_id, like_date)
VALUES(1, 1, "12,july,2023");

--// User should be able to reply on comments.

INSERT INTO
  replies(reply_id, user_id, comment_id, reply_content, reply_date)
VALUES(1, 10, 1, "First reply", "12,july,2023");
