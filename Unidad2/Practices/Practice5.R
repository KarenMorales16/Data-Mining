#Practice
#Filter countries by Low income
filter <-stats$Income.Group == "Low income"
stats[filter,]
stats[filter,"Country.Name"]
#Filter countries by Lower middle income
filter <-stats$Income.Group == "middle income"
stats[filter,"Country.Name"]
stats[stats$Income.Group == "middle income","Country.Name"]

#Filter countries by Low income
stats[stats$Income.Group == "Low income","Country.Name"]

#Filter countries by Upper middle income
stats[stats$Income.Group == "Upper middle income","Country.Name"]

#Filter by countrie Malta
stats[stats$Country.Name == "Malta",]

#Filter by countrie Qatar
stats[stats$Country.Name == "Qatar",]

#Filter by countrie Netherlands
stats[stats$Country.Name == "Netherlands",]

#Filter by countrie Norway
stats[stats$Country.Name == "Norway",]
