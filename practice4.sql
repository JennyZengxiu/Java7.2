# 找出薪水在公司的平均薪水之上的人员名字
# 输出标准中包含Employee中所有字段和该employee所在公司名称以及该公司平均薪资：
# id | name | age | gender | companyId | salary | companyName | avgsal
SELECT employee.*,c.companyName,c.avgSalary from employee LEFT JOIN
(SELECT company.companyName,s.avgSalary avgSalary,s.companyId companyId from company, (SELECT AVG(salary) AS avgSalary ,companyId FROM employee GROUP BY companyId) s WHERE company.id = s.companyId) c
ON employee.companyId = c.companyId WHERE salary > (SELECT AVG(salary) from employee)