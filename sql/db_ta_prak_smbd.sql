-- -----------------------------------------------------
-- Database: TA Praktikum SMBD
-- -----------------------------------------------------

-- DDL (Data Definition Language)
-- -----------------------------------------------------

-- TABLES: employees
DROP TABLE IF EXISTS `employees`;
CREATE TABLE IF NOT EXISTS `employees` (
   `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
   `nik` CHAR(16) NOT NULL,
   `full_name` VARCHAR(50) NOT NULL,
   `birth_date` DATE NOT NULL,
   `gender` ENUM('L', 'P') NOT NULL,
   `address` VARCHAR(100) NOT NULL,
   `no_telp` CHAR(13) NOT NULL,
   `email` VARCHAR(50) NOT NULL,
   `citizenship` ENUM('WNA', 'WNI') NOT NULL,
   `is_active` BOOLEAN NOT NULL DEFAULT TRUE,
   `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
   `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
   PRIMARY KEY `pk_employee_id`(`id`),
   INDEX `idx_full_name` (`full_name`),
   CONSTRAINT `uk_nik` UNIQUE (`nik`),
   CONSTRAINT `validation_nik` CHECK (`nik` REGEXP '^[0-9]{16}$'),
   CONSTRAINT `validation_no_telp` CHECK (`no_telp` REGEXP '^[0-9]+$')
) ENGINE = InnoDB;

-- TABLES: menus
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus` (
   `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
   `menu_name` VARCHAR(15) NOT NULL,
   `is_active` BOOLEAN NOT NULL DEFAULT TRUE,
   `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
   `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
   PRIMARY KEY `pk_menu_id`(`id`),
   CONSTRAINT `uk_menu_name` UNIQUE (`menu_name`)
) ENGINE = InnoDB;

-- TABLES: features
DROP TABLE IF EXISTS `features`;
CREATE TABLE `features` (
   `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
   `feature_name` VARCHAR(10) NOT NULL,
   `is_active` BOOLEAN NOT NULL DEFAULT TRUE,
   `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
   `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
   PRIMARY KEY `pk_feature_id`(`id`),
   CONSTRAINT `uk_feature_name` UNIQUE (`feature_name`)
) ENGINE = InnoDB;

-- TABLES: permissons
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
   `menu_id` INT UNSIGNED NOT NULL,
   `feature_id` INT UNSIGNED NOT NULL,
   `permission_name` VARCHAR(255) NOT NULL,
   `description` VARCHAR(100),
   `is_active` BOOLEAN NOT NULL DEFAULT TRUE,
   `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
   `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
   PRIMARY KEY `pk_permission_id`(`menu_id`, `feature_id`),
   FOREIGN KEY `fk_menu_id`(`menu_id`) REFERENCES `menus`(`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
   FOREIGN KEY `fk_feature_id`(`feature_id`) REFERENCES `features`(`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
   CONSTRAINT `uk_permission_name` UNIQUE (`permission_name`)
) ENGINE = InnoDB;

-- TABLES: roles
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
   `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
   `role_name` VARCHAR(255) NOT NULL,
   `description` VARCHAR(100),
   `is_active` BOOLEAN NOT NULL DEFAULT TRUE,
   `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
   `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
   PRIMARY KEY `pk_role_id`(`id`),
   CONSTRAINT `uk_role_name` UNIQUE (`role_name`)
) ENGINE = InnoDB;

-- TABLES: role_permissions
DROP TABLE IF EXISTS `role_permissions`;
CREATE TABLE `role_permissions` (
   `role_id` INT UNSIGNED NOT NULL,
   `menu_id` INT UNSIGNED NOT NULL,
   `feature_id` INT UNSIGNED NOT NULL,
   `assigned_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
   FOREIGN KEY `fk_role_id`(`role_id`) REFERENCES `roles`(`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
   FOREIGN KEY `fk_permission_id`(`menu_id`, `feature_id`) REFERENCES `permissions`(`menu_id`, `feature_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB;

-- TABLES: accounts
DROP TABLE IF EXISTS `accounts`;
CREATE TABLE `accounts` (
   `employee_id` INT UNSIGNED NOT NULL,
   `username` VARCHAR(15) NOT NULL,
   `password` VARCHAR(15) NOT NULL,
   `role_id` INT UNSIGNED NOT NULL,
   `is_active` BOOLEAN NOT NULL DEFAULT TRUE,
   `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
   `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
   FOREIGN KEY `fk_employee_id`(`employee_id`) REFERENCES `employees`(`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
   FOREIGN KEY `fk_role_id`(`role_id`) REFERENCES `roles`(`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
   CONSTRAINT `uk_employee_id` UNIQUE (`employee_id`),
   CONSTRAINT `uk_role_id` UNIQUE (`role_id`),
   CONSTRAINT `uk_username` UNIQUE (`username`)
) ENGINE = InnoDB;


-- DML (Data Manipulation Language)
-- -----------------------------------------------------

-- DATA: employees
INSERT INTO `employees` (`nik`, `full_name`, `birth_date`, `gender`, `address`, `no_telp`, `email`, `citizenship`, `created_at`, `updated_at`)
   VALUES
      ('1234567890123456', 'John Doe', '1990-05-15', 'L', '123 Main St, City A', '1234567890', 'john.doe@example.com', 'WNA', NOW(), NOW()),
      ('2345678901234567', 'Jane Smith', '1985-08-22', 'P', '456 Elm St, City B', '9876543210', 'jane.smith@example.com', 'WNI', NOW(), NOW()),
      ('3456789012345678', 'Michael Johnson', '1988-03-10', 'L', '789 Oak St, City C', '5551234567', 'michael.johnson@example.com', 'WNA', NOW(), NOW()),
      ('4567890123456789', 'Lisa Kim', '1987-09-03', 'P', '321 Pine St, City D', '9998887777', 'lisa.kim@example.com', 'WNI', NOW(), NOW()),
      ('5678901234567890', 'Ahmad Rizki', '1991-06-25', 'L', '567 Maple St, City E', '4445556666', 'ahmad.rizki@example.com', 'WNI', NOW(), NOW()),
      ('6789012345678901', 'Nadia Putri', '1989-12-18', 'P', '876 Cedar St, City F', '3332221111', 'nadia.putri@example.com', 'WNI', NOW(), NOW()),
      ('7890123456789012', 'Siti Nurul', '1993-02-28', 'P', '987 Birch St, City G', '2223334444', 'siti.nurul@example.com', 'WNI', NOW(), NOW()),
      ('8901234567890123', 'James Wong', '1986-04-14', 'L', '543 Oakwood St, City H', '7778889999', 'james.wong@example.com', 'WNA', NOW(), NOW()),
      ('9012345678901234', 'Nguyen Van An', '1992-07-17', 'L', '456 Redwood St, City I', '6667778888', 'nguyen.van.an@example.com', 'WNA', NOW(), NOW()),
      ('0123456789012345', 'Yuli Astuti', '1984-10-05', 'P', '654 Cedarwood St, City J', '5554443333', 'yuli.astuti@example.com', 'WNI', NOW(), NOW()),
      ('1122334455667788', 'Budi Santoso', '1988-11-20', 'L', '789 Walnut St, City K', '1112223333', 'budi.santoso@example.com', 'WNI', NOW(), NOW()),
      ('2233445566778899', 'Maria Dewi', '1990-01-30', 'P', '234 Elmwood St, City L', '9990001111', 'maria.dewi@example.com', 'WNI', NOW(), NOW()),
      ('3344556677889900', 'David Smith', '1987-03-12', 'L', '987 Spruce St, City M', '8889990000', 'david.smith@example.com', 'WNA', NOW(), NOW()),
      ('4455667788990011', 'Lina Sari', '1991-05-22', 'P', '567 Pineapple St, City N', '7778889999', 'lina.sari@example.com', 'WNI', NOW(), NOW()),
      ('5566778899001122', 'Paul Tan', '1989-08-15', 'L', '876 Mango St, City O', '6667778888', 'paul.tan@example.com', 'WNA', NOW(), NOW()),
      ('6677889900112233', 'Anita Wati', '1992-12-07', 'P', '234 Banana St, City P', '5556667777', 'anita.wati@example.com', 'WNI', NOW(), NOW()),
      ('7788990011223344', 'Markus Hartono', '1986-02-09', 'L', '543 Lemon St, City Q', '4445556666', 'markus.hartono@example.com', 'WNI', NOW(), NOW()),
      ('8899001122334455', 'Rani Kumala', '1993-04-18', 'P', '876 Grape St, City R', '3334445555', 'rani.kumala@example.com', 'WNI', NOW(), NOW()),
      ('9900112233445566', 'Ryan Gunawan', '1985-07-21', 'L', '987 Apple St, City S', '2223334444', 'ryan.gunawan@example.com', 'WNA', NOW(), NOW()),
      ('0011223344556677', 'Julia Sutanto', '1990-09-03', 'P', '654 Peach St, City T', '1112223333', 'julia.sutanto@example.com', 'WNI', NOW(), NOW()),
      ('0022334455667788', 'Andreas Liu', '1987-11-25', 'L', '789 Plum St, City U', '9990001111', 'andreas.liu@example.com', 'WNA', NOW(), NOW()),
      ('0033445566778899', 'Mira Handayani', '1991-01-15', 'P', '234 Pear St, City V', '8889990000', 'mira.handayani@example.com', 'WNI', NOW(), NOW()),
      ('0044556677889900', 'Hendro Susanto', '1988-03-27', 'L', '987 Cherry St, City W', '7778889999', 'hendro.susanto@example.com', 'WNI', NOW(), NOW()),
      ('0055667788990011', 'Cindy Halim', '1992-06-09', 'P', '876 Watermelon St, City X', '6667778888', 'cindy.halim@example.com', 'WNI', NOW(), NOW()),
      ('0066778899001122', 'Edward Lim', '1989-08-31', 'L', '543 Papaya St, City Y', '5556667777', 'edward.lim@example.com', 'WNA', NOW(), NOW()),
      ('0077889900112233', 'Rina Cahyani', '1993-11-13', 'P', '234 Avocado St, City Z', '4445556666', 'rina.cahyani@example.com', 'WNI', NOW(), NOW()),
      ('0088990011223344', 'Hendra Setiawan', '1986-01-04', 'L', '987 Guava St, City AA', '3334445555', 'hendra.setiawan@example.com', 'WNI', NOW(), NOW()),
      ('0099001122334455', 'Dewi Hartati', '1990-03-16', 'P', '876 Kiwi St, City AB', '2223334444', 'dewi.hartati@example.com', 'WNI', NOW(), NOW()),
      ('1100112233445566', 'Tommy Wijaya', '1985-05-28', 'L', '654 Dragonfruit St, City AC', '1112223333', 'tommy.wijaya@example.com', 'WNA', NOW(), NOW()),
      ('2211223344556677', 'Diana Tan', '1991-08-10', 'P', '789 Lychee St, City AD', '9990001111', 'diana.tan@example.com', 'WNI', NOW(), NOW()),
      ('3322334455667788', 'Anton Budiman', '1987-10-22', 'L', '567 Durian St, City AE', '8889990000', 'anton.budiman@example.com', 'WNA', NOW(), NOW()),
      ('4433445566778899', 'Ratna Sari', '1992-12-04', 'P', '876 Mangosteen St, City AF', '7778889999', 'ratna.sari@example.com', 'WNI', NOW(), NOW()),
      ('5544556677889900', 'Hadi Purnomo', '1988-02-16', 'L', '234 Pomegranate St, City AG', '6667778888', 'hadi.purnomo@example.com', 'WNI', NOW(), NOW()),
      ('5678901234567000', 'Wayan Suwitra', '1988-04-11', 'L', 'Jl. Nangka No. 17, Bali, Indonesia', '082234567800', 'wayan.suwitra@example.com', 'WNI', NOW(), NOW()),
      ('6789012345678001', 'Ketut Arini', '1991-07-19', 'P', 'Jl. Subak No. 18, Bali, Indonesia', '082234567801', 'ketut.arini@example.com', 'WNI', NOW(), NOW()),
      ('7890123456789002', 'I Nyoman Sugiarto', '1992-05-16', 'L', 'Jl. Lempuyang No. 19, Bali, Indonesia', '082234567802', 'nyoman.sugiarto@example.com', 'WNI', NOW(), NOW()),
      ('8901234567890003', 'Made Putra', '1985-11-03', 'L', 'Jl. Kenyeri No. 20, Bali, Indonesia', '082234567803', 'made.putra@example.com', 'WNI', NOW(), NOW()),
      ('9012345678901004', 'Ni Luh Ratna', '1989-08-14', 'P', 'Jl. Melasti No. 21, Bali, Indonesia', '082234567804', 'ni.luh.ratna@example.com', 'WNI', NOW(), NOW()),
      ('0123456789012005', 'Joko Widodo', '1987-12-20', 'L', 'Jl. Merdeka Barat No. 22, Yogyakarta, Indonesia', '082234567805', 'joko.widodo@example.com', 'WNI', NOW(), NOW()),
      ('1122334455663006', 'Rismawati', '1990-03-09', 'P', 'Jl. Wijaya Kusuma No. 23, Surabaya, Indonesia', '082234567806', 'rismawati@example.com', 'WNI', NOW(), NOW()),
      ('2233445566774007', 'Andi Nugroho', '1992-10-05', 'L', 'Jl. Tentara Pelajar No. 24, Jakarta, Indonesia', '082234567807', 'andi.nugroho@example.com', 'WNI', NOW(), NOW()),
      ('3344556677885008', 'Dian Permana', '1986-07-22', 'P', 'Jl. Jenderal Sudirman No. 25, Bandung, Indonesia', '082234567808', 'dian.permana@example.com', 'WNI', NOW(), NOW()),
      ('4455667788996009', 'Yusuf Bachtiar', '1989-11-15', 'L', 'Jl. Imam Bonjol No. 26, Semarang, Indonesia', '082234567809', 'yusuf.bachtiar@example.com', 'WNI', NOW(), NOW()),
      ('5566778899007010', 'Rina Puspita', '1991-02-28', 'P', 'Jl. Gajah Mada No. 27, Surabaya, Indonesia', '082234567810', 'rina.puspita@example.com', 'WNI', NOW(), NOW()),
      ('6677889900118011', 'Haris Maulana', '1988-06-13', 'L', 'Jl. Suryo No. 28, Malang, Indonesia', '082234567811', 'haris.maulana@example.com', 'WNI', NOW(), NOW()),
      ('7788990011229012', 'Lily Ramadhani', '1992-04-07', 'P', 'Jl. Hayam Wuruk No. 29, Medan, Indonesia', '082234567812', 'lily.ramadhani@example.com', 'WNI', NOW(), NOW()),
      ('8899001122330023', 'Agus Widodo', '1985-09-19', 'L', 'Jl. Jenderal Gatot Subroto No. 30, Solo, Indonesia', '082234567813', 'agus.widodo@example.com', 'WNI', NOW(), NOW()),
      ('9900112233441034', 'Tuti Suryani', '1989-03-24', 'P', 'Jl. Diponegoro No. 31, Pekanbaru, Indonesia', '082234567814', 'tuti.suryani@example.com', 'WNI', NOW(), NOW()),
      ('0011223344552045', 'Asep Setiawan', '1986-05-31', 'L', 'Jl. Sisingamangaraja No. 32, Makassar, Indonesia', '082234567815', 'asep.setiawan@example.com', 'WNI', NOW(), NOW()),
      ('0022334455663056', 'Sri Lestari', '1991-10-11', 'P', 'Jl. Sultan Agung No. 33, Palembang, Indonesia', '082234567816', 'sri.lestari@example.com', 'WNI', NOW(), NOW());

-- Views 
-- Syarat: 5 view
-- -----------------------------------------------------

-- Join
-- -----------------------------------------------------

-- Stored Procedures (Branching & Looping)
-- Syarat: 5 stored procedures
-- -----------------------------------------------------

-- Triggers
-- Syarat: INSERT, UPDATE, DELETE (@ [before, after])
-- -----------------------------------------------------