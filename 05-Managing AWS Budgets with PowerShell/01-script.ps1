# What commands are available in the AWS Budgets module for PowerShell?
Get-Command -Module AWS.Tools.Budgets

# Obtain a list of budgets in the AWS billing console
# You can dynamically retrieve your AWS account ID, by using AWS Security Token Service (STS)
$BudgetList = Get-BGTBudgetList -AccountId (Get-STSCallerIdentity).Account

# This actually gives us a fair amount of detail. We can drill further into these objects.
$BudgetList[0].BudgetLimit

$BudgetList[0].CalculatedSpend.ActualSpend

# How much does AWS think we will end up spending this month?
$BudgetList[0].CalculatedSpend.ForecastedSpend

New-BGTBudget -AccountId (Get-STSCallerIdentity).Account -BudgetLimit_Amount 100 -Budget_TimeUnit MONTHLY -Budget_BudgetName cbttrevor100 -Budget_BudgetType COST -BudgetLimit_Unit USD

help New-BGTBudget