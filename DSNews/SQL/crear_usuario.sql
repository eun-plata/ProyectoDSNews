DROP USER IF EXISTS 'jesus'@'localhost';
CREATE USER 'deSoftNews'@'localhost' IDENTIFIED BY 'deSoftNews';
GRANT ALL PRIVILEGES on dsnews_content.* TO 'deSoftNews'@'localhost';