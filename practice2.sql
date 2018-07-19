# 取得每个company中最高薪水的人员名字
# 输出结果包含公司名称和人员名称：companyName name
SELECT employee.employeeName,company.companyName FROM employee,company
JOIN (SELECT MAX(salary)salary,companyId FROM employee GROUP BY companyId)g ON company.id = g.companyId
WHERE company.id = employee.companyId and employee.salary = g.salary