# You can retrieve forecast data for AWS spend using PowerShell
Get-CECostForecast

help Get-CECostForecast

# API documentation for Cost Explorer forecasting https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_GetCostForecast.html

$Date = Get-Date
$TimePeriod = [Amazon.CostExplorer.Model.DateInterval]::new()
$TimePeriod.Start = '{0}-{1}-{2}' -f $Date.Year, $Date.Month.ToString().PadLeft(2, '0'), $Date.Day.ToString().PadLeft(2, '0')
$TimePeriod.End = '{0}-{1}-{2}' -f $Date.Year, $Date.Month.ToString().PadLeft(2, '0'), $Date.AddDays(5).Day.ToString().PadLeft(2, '0')

$Forecast = Get-CECostForecast -Granularity DAILY -Metric BLENDED_COST -TimePeriod $TimePeriod

$Forecast = Get-CECostForecast -Granularity DAILY -Metric BLENDED_COST -TimePeriod $TimePeriod -PredictionIntervalLevel 99
