dir.create("data")
dir.create("scripts")
dir.create("results")
getwd()
data <- read.csv("patient_info.csv")
View(data)
str(data)

data$gender_fac <- as.factor(data$gender)
levels(data$gender_fac)

data$diagnosis_fac <- factor(data$diagnosis, levels = c("Cancer", "Normal"))
levels(data$diagnosis_fac)

data$smoker_fac <- as.factor(data$smoker)
levels(data$smoker_fac)

#To clean the character columns of these three in the data d.f
data[, c(-3,-4)]