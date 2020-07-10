Pista 1
Use:
redondo()
media()
max ()
min ()

#Data
ingresos <- c (14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
gastos <- c (12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution
profit <-ingresos -gastos
profit

# Calculate the tax as 30% of the profit and round to 2 decimal points
tax <- round(0.30 * profit, 2)
tax 


# Calculate remaining earnings after deducting taxes
profit.after.tax <- profit - tax
profit.after.tax

# Calculate profit margin as profit after income taxes
# Rounded to 2 decimal points, then multiply by 100 to get%
#
profit.margin <- round(profit.after.tax/ingresos, 2) * 100
profit.margin

# Calculate the average after-tax benefit for the 12 months
mean_pat <- mean(profit.after.tax)
mean_pat

#Find the months with higher than average earnings after taxes
good.months <- max(profit, mean_pat)
good.months
# Bad months are the opposite of good months!
bad.months <-  min(profit, mean_pat)
bad.months

# 8 The Best Month Is Where Profit After Tax Was Equal To The Maximum
best.month <- profit.after.tax == max(profit.after.tax)
best.month

# 9 The Worst Month Is Where Profit After Tax Was Equal To The Minimum
worst.month <- profit.after.tax == min(profit.after.tax)
worst.month

# 10 Convert All Calculations To Units Of One Thousand Dollars
revenue.1000 <- round(revenue / 1000, 0)
expenses.1000 <- round(expenses/ 1000, 0)
profit.1000 <- round(profit/1000,0)
profit.after.tax.1000 <- round(profit.after.tax/1000, 0)
