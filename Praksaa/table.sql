CREATE TABLE users (
idUser int(11) AUTO_INCREMENT PRIMARY KEY NOT NULL,
uidUser TINYTEXT NOT NULL,
emailUser TINYTEXT NOT NULL,
pwdUser LONGTEXT NOT NULL,
userStatus VARCHAR(10) DEFAULT 'public' NOT NULL
);

CREATE TABLE images (
id int(11) AUTO_INCREMENT PRIMARY KEY NOT NULL,
idUser int(11) NOT NULL,
imageName LONGTEXT NOT NULL
);

ALTER TABLE images
ADD CONSTRAINT fkey
FOREIGN KEY (idUser)
REFERENCES users(idUser)
ON DELETE CASCADE