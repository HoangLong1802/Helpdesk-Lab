-- Chọn cơ sở dữ liệu
USE glpidb;

-- Tạo người dùng demo
INSERT INTO glpi_users (name, password, realname, firstname, language, profiles_id, entities_id, is_active)
VALUES ('helpdesk', MD5('123456'), 'Helpdesk', 'Agent', 'en_GB', 2, 0, 1);

-- Tạo ticket mẫu
INSERT INTO glpi_tickets (name, content, status, urgency, impact, priority, date, users_id_recipient)
VALUES ('Cannot access network drive', 'User reports Z: drive is not accessible.', 1, 2, 2, 3, NOW(), 2);

-- Tạo nhóm/phòng ban mẫu
INSERT INTO glpi_groups (name, entities_id, is_active) VALUES ('IT Support', 0, 1);

-- Gán user vào group
INSERT INTO glpi_groups_users (groups_id, users_id) VALUES (1, 2);

-- Thêm thiết bị demo
INSERT INTO glpi_computers (name, serial, otherserial, comment)
VALUES ('Laptop-Demo', 'SN123456', 'INV2024', 'Demo laptop for onboarding');

-- Ghi chú
-- profiles_id:
-- 1 = Super-Admin, 2 = Technician, 3 = Normal User
