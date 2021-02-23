## Learning Objectives

* AWS provides cost management APIs that allow you to do things like retrieve current spend
  * Budgets
  * Cost Explorer
  * Cost and Usage Reporting
  * Price listing service

* [Pricing for AWS Cost and Usage Reporting API](https://aws.amazon.com/aws-cost-management/aws-cost-and-usage-reporting/)
  * `$0.01` per request made to the API
  * Usage records cover a one-hour period
  * `$0.01` per 1,000 usage records

* PowerShell is cross-platform and open source automation framework
* PowerShell runs on MacOS, Linux, Windows, and even ARM CPUs (ie. Raspberry Pi & AWS Graviton)
* Developed by Microsoft as an open source project
* PowerShell makes for excellent "glue code" between various SaaS services
* PowerShell can be hosted in .NET Core on AWS Lambda

### Use Cases for AWS Cost Explorer APIs

* Get automated reports to your team's Slack channel
* Write a history of billing data to a metrics server, like InfluxDB
* Budgets send notifications when you exceed a pre-determined cost threshold
* Forecast cost of AWS resources throughout each month
* Automate monitoring across many AWS accounts and regions
* Get alerted to unusual activity with [Anomaly Detection in AWS Cost Management]()
* Monitor when price changes happen in AWS

### What You'll Learn

* Set up your local development environment for AWS Cost and Usage Reporting
* IAM policy permissions required in order to access cost management APIs
* Explore some of the APIs that allow you to retrieve historical cost data and cost forecasting
* 