
#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution
month <-1
profit <-  revenue -  expenses


profit_after_tax <- round(profit * 0.7,digits = 2)

profit_margin <- round(profit_after_tax/revenue,digits = 2) * 100

mean_profit_after_tax <- round(mean(profit_after_tax),digits=2)

good_months <- profit_after_tax > mean_profit_after_tax

bad_months <- !good_months

best_month <- profit_after_tax==max(profit_after_tax)

worst_month <- profit_after_tax==min(profit_after_tax)

#units in 1000
revenues.1000 <- round(revenue /1000,2)
expenses.1000 <- round(expenses /1000,2)
profit.1000 <- round(profit /1000,2)
profit_after_tax.1000 <-round( profit_after_tax /1000,2)


#outputs as a matrix
output.matrix <-rbind(
revenues.1000,
expenses.1000,
profit.1000,
profit_after_tax.1000,
profit_margin,
good_months,
bad_months,
best_month,
worst_month)


output.matrix




