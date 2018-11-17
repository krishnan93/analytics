library(wordcloud2)
?wordcloud2
library(wordcloud2)
# Global variables can go he
df=data.frame(word=c('sangh','bablu','bhaukal'), freq=c(20,23,15))
wordcloud2(df)
wordcloud2(df, size = 2)

wordcloud2(df, size = 1,shape = 'pentagon')
wordcloud2(df, size = 1,shape = 'star')

wordcloud2(df, size = 2,
           color = "random-light", backgroundColor = "grey")

wordcloud2(df, size = 2, minRotation = -pi/2, maxRotation = -pi/2)
wordcloud2(df, size = 2, minRotation = -pi/6, maxRotation = -pi/6,rotateRatio = 1)
wordcloud2(demoFreq, size = 2, minRotation = -pi/6, maxRotation = pi/6,
           rotateRatio = 0.9)

wordcloud2(demoFreqC, size = 2,
           color = "random-light", backgroundColor = "grey")
wordcloud2(demoFreqC, size = 2, minRotation = -pi/6, maxRotation = -pi/6,
           rotateRatio = 1)

# Color Vector

colorVec = rep(c('red', 'skyblue'), length.out=nrow(demoFreq))
wordcloud2(demoFreq, color = colorVec, fontWeight = "bold")

wordcloud2(demoFreq,
           color = ifelse(demoFreq[, 2] > 20, 'red', 'skyblue'))
