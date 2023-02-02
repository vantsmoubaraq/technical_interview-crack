-- Create replica source
-- To be run on replica server, web-02
-- Change ip/host to your web-01, place password your created in task 3, run "show master status" in mysql shell on web-01 to see name of log_file and log_pos
-- How to run: cat 4-replica_source.sql | mysql -u root -p

CHANGE MASTER TO MASTER_HOST='1x0.26.246.254', MASTER_USER='replica_user', MASTER_PASSWORD='password', MASTER_LOG_FILE='mysql-bin.000001', MASTER_LOG_POS=154;
START SLAVE;
SHOW SLAVE STATUS;
