CREATE USER IF NOT EXISTS 'ldcss1rabou'@'%' IDENTIFIED BY 'romain';
CREATE USER IF NOT EXISTS 'ldcss2arthu'@'%' IDENTIFIED BY 'arthur';
CREATE USER IF NOT EXISTS 'ldcss3pauli'@'localhost' IDENTIFIED BY 'paulin';
CREATE USER IF NOT EXISTS 'ldcss4antoi'@'%' IDENTIFIED BY 'antoine';
CREATE USER IF NOT EXISTS 'ldcss5thiba'@'%' IDENTIFIED BY 'thibaut';
CREATE USER IF NOT EXISTS 'ldcss6paul'@'localhost' IDENTIFIED BY 'paul';

CREATE DATABASE LDCSS_dev DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE DATABASE LDCSS_prod DEFAULT CHARACTER set utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE DATABASE LDCSS_dev_backup DEFAULT CHARACTER set utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE DATABASE LDCSS_prod_backup DEFAULT CHARACTER set utf8mb4 COLLATE utf8mb4_unicode_ci;

GRANT ALL PRIVILEGES ON LDCSS_dev.* TO 'ldcss1rabou'@'%';
GRANT ALL PRIVILEGES ON LDCSS_prod.* TO 'ldcss1rabou'@'%';
GRANT ALL PRIVILEGES ON LDCSS_dev_backup.* TO 'ldcss1rabou'@'%';
GRANT ALL PRIVILEGES ON LDCSS_prod_backup.* TO 'ldcss1rabou'@'%';

GRANT ALL PRIVILEGES ON LDCSS_dev.* TO 'ldcss2arthu'@'%';
GRANT ALL PRIVILEGES ON LDCSS_prod.* TO 'ldcss2arthu'@'%';
GRANT ALL PRIVILEGES ON LDCSS_dev_backup.* TO 'ldcss2arthu'@'%';
GRANT ALL PRIVILEGES ON LDCSS_prod_backup.* TO 'ldcss2arthu'@'%';

GRANT ALL PRIVILEGES ON *.* TO 'ldcss3pauli'@'localhost';

GRANT ALL PRIVILEGES ON LDCSS_dev.* TO 'ldcss4antoi'@'%';
GRANT ALL PRIVILEGES ON LDCSS_prod.* TO 'ldcss4antoi'@'%';
GRANT ALL PRIVILEGES ON LDCSS_dev_backup.* TO 'ldcss4antoi'@'%';
GRANT ALL PRIVILEGES ON LDCSS_prod_backup.* TO 'ldcss4antoi'@'%';

GRANT ALL PRIVILEGES ON LDCSS_dev.* TO 'ldcss5thiba'@'%';
GRANT ALL PRIVILEGES ON LDCSS_prod.* TO 'ldcss5thiba'@'%';
GRANT ALL PRIVILEGES ON LDCSS_dev_backup.* TO 'ldcss5thiba'@'%';
GRANT ALL PRIVILEGES ON LDCSS_prod_backup.* TO 'ldcss5thiba'@'%';

GRANT ALL PRIVILEGES ON LDCSS_dev.* TO 'ldcss6paul'@'localhost';
GRANT ALL PRIVILEGES ON LDCSS_prod.* TO 'ldcss6paul'@'localhost';
GRANT ALL PRIVILEGES ON LDCSS_dev_backup.* TO 'ldcss6paul'@'localhost';
GRANT ALL PRIVILEGES ON LDCSS_prod_backup.* TO 'ldcss6paul'@'localhost';