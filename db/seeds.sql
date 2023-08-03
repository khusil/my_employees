INSERT INTO department (name) VALUES
    ('Sales'),
    ('Engineering'),
    ('Finance'),
    ('Legal');

INSERT INTO roles (title, salary, department_id) VALUES
    ('Sales Lead', 5, 1),
    ('Salesperson', 8, 1),
    ('Lead Engineer', 15, 2),
    ('Software Engineer', 12, 2),
    ('Lead Accountant', 16, 3),
    ('Accountant', 125, 3),
    ('Legal Team Lead', 250, 4),
    ('Lawyer', 19000, 4);
    
INSERT INTO employee (first_name, last_name, roles_id, manager_id) VALUES
    ('MIke','John',1,1),
    ('John','mike',2,1),
    ('bob','john',4,3),
    ('kevin','pract',3,8);