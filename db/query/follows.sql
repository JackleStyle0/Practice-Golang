-- name: CreateFollow :exec
INSERT INTO follows (
    following_user_id,
    followed_user_id
) VALUES (
    $1, $2
);

-- name: GetFollow :one
SELECT * FROM follows
RETURING;

-- name: DeleteFollow :exec
DELETE FROM follows
WHERE followed_user_id = $1;
