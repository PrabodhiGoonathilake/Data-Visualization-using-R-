library(ISLR) 
attach(credit66)
str(credit66)
clean.credit66 <- na.omit(credit66)
library(rcompanion)



plotNormalHistogram(clean.credit66$Duration.of.Credit..month.)
plotNormalHistogram(clean.credit66$Credit.Amount)
plotNormalHistogram(log(clean.credit66$Credit.Amount))
log.Credit_Amount <- log(clean.credit66$Credit.Amount)
log.credit66 <- data.frame(clean.credit66, log.Credit_Amount)
log.credit66 <-log.credit66[ ,-6]
plotNormalHistogram(clean.credit66$Age..years.)

log.credit66$Creditability<-factor(log.credit66$Creditability)


library(rpart)
tree <- rpart(Creditability ~.,data = log.credit66, control = rpart.control(minbucket = 5))
summary(tree)
plot(tree, main = "Decision Tree for Credit66 Dataset")
text(tree)


credit66.bkup <- credit66 
str(credit66) 
summary(credit66)
sapply(credit66, sd) 
xtabs(~Account.Balance + Creditability, data = credit66)
credit66$Account.Balance<- factor(credit66$Account.Balance)
logit <- glm(Creditability ~ Credit.Amount + Age..years. + Account.Balance, data = credit66, family = "binomial")
summary(logit)


library(aod)
wald.test(b = coef(logit), Sigma = vcov(logit), Terms = 4:6)

level <- cbind(0, 0, 0, 0, -1, 1) 
wald.test(b = coef(logit), Sigma = vcov(logit), L = level)
exp(coef(logit)) 
exp(cbind(OR = coef(logit), confint(logit))) 

#pp

#1
credit66.1 <- with(credit66, data.frame(Credit.Amount = mean(Credit.Amount), Age..years.= mean(Age..years.), Account.Balance = factor(1:4)))
credit66.1
credit66.1$Account.Balance <- predict(logit, newdata = credit66.1, type = "response")
credit66.1

#2

credit66.2 <- with(credit66, data.frame(Credit.Amount= rep(seq(from = 250, to = 20000, length.out = 900),4), Age..years.= mean(Age..years.), Account.Balance = factor(rep(1:4, each = 100)))) 
View(credit66.2)

#3

credit66.3 <- cbind(credit66.2, predict(logit, newdata = credit66.2, type = "link", se = TRUE)) 


credit66.3 <- within(credit66.3, {
  PredictedProb <- plogis(fit)
  LL <- plogis(fit - (1.96 * se.fit))
  UL <- plogis(fit + (1.96 * se.fit))
})
View(credit66.3)

#Plot

library(ggplot2)
ggplot(credit66.3, aes(x = Credit.Amount, y = PredictedProb)) + 
  geom_ribbon(aes(ymin = LL, ymax = UL, fill =Account.Balance), alpha = 0.2) + geom_line(aes(colour 		= Account.Balance), size = 1)

attach(credit66new)
credit66new$Creditability <-factor(credit66new$Creditability)
log.Credit_Amount <- log(credit66new$Credit.Amount)
credit66new <- data.frame(credit66new, log.Credit_Amount)
credit66new <-credit66new[ ,-6]


library(MASS)
credit66new.lda<-lda(Creditability~.,data=credit66new, prior=c(1,1)/2)
credit66new.lda
credit66new.lda.predict<-predict(credit66new.lda)
.table<-table(credit66new$Creditability,data=credit66new.lda.predict$class)
.table
addmargins(.table)
round(addmargins(prop.table(.table,1)*100,2),2)
ncorrect<-sum(diag(.table))
ntotal<-sum(.table)
cat(ncorrect," correctly allocated out of ",ntotal," (",100*ncorrect/ntotal,"%)","\n")







