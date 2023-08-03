const inquirer = require("inquirer");

const getRole = () =>  {
    const sql = `SELECT roles.title AS Roles from roles`
    
    dbQuery(sql, false, false, true)
};

const addRole = () => {
  
    connection.query(`SELECT * from department`, (err, res) => {
        if (err) {
            throw err;
        };

        res.forEach(row => {
            deptArr.push({
                id: row.id,
                name: row.name
            });
        });
        console.log(deptArr)
    });

    inquirer.prompt(rolePrompt)
        .then(input => {
            const deptId = deptArr.filter(dept => input.department === dept.name)[0].id;

            const sql = `INSERT INTO roles (title, salary, department_id)
                VALUES (?, ?, ?)`;
            const params = [input.title, input.salary, deptId];
        
            dbQuery(sql, params, 'Successfully added role!');
        });
};

module.exports = { getRole, addRole};
const rolePrompt = require('../lib/roles.js');