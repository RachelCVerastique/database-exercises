CREATE TABLE user (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT
    first_name VARCHAR(50) NOT NULL
    last_name VARCHAR(50) NOT NULL
    email VARCHAR(100) NOT NULL
    password VARCHAR(50) NOT NULL
    PRIMARY KEY (id)
)


CREATE TABLE ads (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT
    title VARCHAR(100)
    category TEXT NOT NULL
    description TEXT NOT NULL
    owner_id INT UNSIGNED NOT NULL
    FOREIGN KEY (owner_id) REFRENCES user(id)
)

#first bullet querie
SELECT email
FROM user
where owner_id IN (
    SELECT owner_id
    FROM ads
    where id = 00000
    )


#second bullet querie
SELECT category
FROM ads
where id = 000000


#third bullet querie
SELECT *
from ads
WHERE catorgory = "free"

#fourth bullet querie
SELECT *
FROM ads
WHERE owner_id IN (
    SELECT id
    FROM user
    WHERE id = 0000 OR first_name = 'bob' OR last_name = 'sagget' OR email = 'bsag@gmail.com'
    )