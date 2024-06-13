CREATE TRIGGER trg_features_lowercase_feature_name
BEFORE INSERT ON features
FOR EACH ROW
BEGIN
   SET NEW.feature_name = LOWER(NEW.feature_name);
END;

CREATE TRIGGER trg_features_lowercase_feature_name_update
BEFORE UPDATE ON features
FOR EACH ROW
BEGIN
   SET NEW.feature_name = LOWER(NEW.feature_name);
END;

CREATE TRIGGER trg_menus_lowercase_menu_name
BEFORE INSERT ON menus
FOR EACH ROW
BEGIN
   SET NEW.menu_name = LOWER(NEW.menu_name);
END

CREATE TRIGGER trg_menus_lowercase_menu_name_update
BEFORE UPDATE ON menus
FOR EACH ROW
BEGIN
   SET NEW.menu_name = LOWER(NEW.menu_name);
END;

CREATE TRIGGER trg_permissions_lowercase_permission_name
BEFORE INSERT ON permissions
FOR EACH ROW
BEGIN
   SET NEW.permission_name = LOWER(NEW.permission_name);
END;

CREATE TRIGGER trg_permissions_lowercase_permission_name_update
BEFORE UPDATE ON permissions
FOR EACH ROW
BEGIN
   SET NEW.permission_name = LOWER(NEW.permission_name);
END:

CREATE TRIGGER trg_employees_validate_gender
BEFORE INSERT ON employees
FOR EACH ROW
BEGIN
   SET NEW.gender = UPPER(NEW.gender);
   IF NEW.gender NOT IN ('L', 'P') THEN
      SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid gender value, allowed values are L or P';
   END IF;
END;

CREATE TRIGGER trg_employees_validate_gender_update
BEFORE UPDATE ON employees
FOR EACH ROW
BEGIN
   SET NEW.gender = UPPER(NEW.gender);
   IF NEW.gender NOT IN ('L', 'P') THEN
      SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid gender value, allowed values are L or P';
   END IF;
END;

CREATE TRIGGER trg_employees_validate_citizenship
BEFORE INSERT ON employees
FOR EACH ROW
BEGIN
   SET NEW.citizenship = UPPER(NEW.citizenship);
   IF NEW.citizenship NOT IN ('WNA', 'WNI') THEN
      SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid citizenship value, allowed values are WNA or WNI';
   END IF;
END;

CREATE TRIGGER trg_employees_validate_citizenship_update
BEFORE UPDATE ON employees
FOR EACH ROW
BEGIN
   SET NEW.citizenship = UPPER(NEW.citizenship);
   IF NEW.citizenship NOT IN ('WNA', 'WNI') THEN
      SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid citizenship value, allowed values are WNA or WNI';
   END IF;
END;
