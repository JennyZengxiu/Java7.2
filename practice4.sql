# 找出薪水在公司的平均薪水之上的人员名字
# 输出标准中包含Employee中所有字段和该employee所在公司名称以及该公司平均薪资：
# id | name | age | gender | companyId | salary | companyName | avgsal
SELECT employee.id,employee.`name`,employee.age,employee.gender,employee.companyId,employee.salary,company.companyName,AVG(salary)AS avgsal FROM company,employee
WHERE employee.companyId  = company.id GROUP BY employee.companyId