library(wordcloud)

# read file with skills and frequency from LinkedIn
skills <- read.csv("skills.csv", header=T)

# Create a bar plot of skill frequencies
m.skills=t(as.matrix(skills))
barplot(m.skills[1:10], col="tan")

# Create a wordcloud of skills
pal <- brewer.pal(9,"BuGn")
pal <- pal[-(1:4)]
wordcloud(words=skills$Skill, freq=skills$Frequency, scale=c(4,.3),min.freq=2,max.words=Inf,random.order=FALSE,rot.per=.25,colors=pal)
