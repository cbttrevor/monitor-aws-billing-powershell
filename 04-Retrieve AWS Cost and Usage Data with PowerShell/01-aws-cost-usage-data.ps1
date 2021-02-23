Get-Command -Module AWS.Tools.CostExplorer -Name *usage*

help Get-CECostAndUsage

#region Set Date Interval
$TimePeriod = [Amazon.CostExplorer.Model.DateInterval]::new()
$TimePeriod.Start = '2021-01-01'
$TimePeriod.End = '2021-01-08'
#endregion

# Assign results of API call to a PowerShell variable
$Result = Get-CECostAndUsage -Metric BLENDED_COST -TimePeriod $TimePeriod -Granularity DAILY

#region Hourly Report
# Obtain hourly report of data
$TimePeriod = [Amazon.CostExplorer.Model.DateInterval]::new()
$TimePeriod.Start = ([datetime]'2021-02-14').ToString('s') + 'Z'
$TimePeriod.End = ([datetime]'2021-02-18').ToString('s') + 'Z'
$Result = Get-CECostAndUsage -Metric BLENDED_COST -TimePeriod $TimePeriod -Granularity HOURLY

# Explore the results object in more detail.
# ResultsByTime is actually an array, even if you only have a single object
$Result.ResultsByTime

$Result.ResultsByTime[0]