-- // Function which run when we call trigger
CREATE OR REPLACE FUNCTION update_comment_count()
RETURNS TRIGGER AS $commentCount$
BEGIN 
UPDATE photos
SET comment_count = (SELECT COUNT(*)
					FROM comments
					WHERE photo_id=NEW.photo_id)
					WHERE ID= NEW.photo_id;
	  RETURN NEW;
END;
$commentCount$
LANGUAGE plpgsql;

-- // creating trigger 

CREATE TRIGGER update_comments_count_trigger
AFTER INSERT ON comments
FOR EACH ROW
EXECUTE FUNCTION update_comment_count();


-- // when we insert in comment table it would count the number of comment 

INSERT INTO comments (contents, user_id, photo_id)
VALUES
  ('Quo velit iusto ducimus quos a incidunt nesciunt facilis.', 4, 21);


-- // to check the comment_count column in photos table 

SELECT * FROM photos;