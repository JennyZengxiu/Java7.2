# 取得每个company中最高薪水的人员名字
# 输出结果包含公司名称和人员名称：companyName name
SELECT company.companyName,employee.`name`FROM company,employee
JOIN (SELECT MAX(salary)salary,`name`,companyId FROM employee GROUP BY companyId)g ON g.`name` = employee.`name`
WHERE company.id = employee.companyId