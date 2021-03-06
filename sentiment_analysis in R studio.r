****************************************************************************************************************************************************************************
=> (C:/Users/kannuP-RL8E15Q/Desktop/Kannu Priya) -> replace it with the path of file where you saved your file on which you want to do sentiment analysis
=> in place of (file.choose()), you can also put the name of the file on which you want to do sentiment analysis
****************************************************************************************************************************************************************************
print(getwd())
setwd("C:/Users/kannuP-RL8E15Q/Desktop/Kannu Priya")
print(getwd())
library(syuzhet)
library(ggplot2)
library(tm)
library(wordcloud)
texts=readLines(file.choose())
print(texts)
sentiment=get_nrc_sentiment(texts)
print(sentiment)
text=cbind(texts,sentiment)
TotalSentiment=data.frame(colSums(text[,c(2:11)]))
TotalSentiment
names(TotalSentiment)="count"
TotalSentiment
names(TotalSentiment)="count"
TotalSentiment=cbind("sentiment"=rownames(TotalSentiment), TotalSentiment)
rownames(TotalSentiment)=NULL
ggplot(data=TotalSentiment,aes(x=sentiment,y=count))+geom_bar(aes(fill=sentiment),stat ="identity")
+theme(legend.position="none")+xlab("sentiment")+ylab("Total Count")+ggtitle("Total Sentimental Score")

