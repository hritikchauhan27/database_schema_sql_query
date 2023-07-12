1- select comments.contents,comments.photo_id, users.username
 from comments inner join users on comments.user_id
= users.id where comments.photo_id=3;

2- select
  avg(comment_count) as average
from
  (
    select
      count(contents) as comment_count,
      photo_id
    from
      comments
    group by
      photo_id
  ) as comment_count;

3- select
  distinct count(contents) as comment_count,
  photo_id
from
  comments
group by
  photo_id
order by
  count(contents) desc
limit
  1;



4- select
  count(contents) as comment_count
from
  comments
where
  photo_id = 10;


5 - select
  comment.user_id,
  count(comment.photo_id + comment_id) as number_of_activity
from
  comment
group by
  comment.user_id
order by
  number_of_activity desc
limit
  1;

6- select
  avg(length(contents)) as avg_per_comment
from
  comments;