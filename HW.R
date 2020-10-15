#加载需要的包
> library("zoo")
> library("TTR")
> library("quantmod")
#读取quantmod指定股票的数据
getSymbols("EDU",src="yahoo",from="2020-02-01",to="2020-06-01")
getSymbols("BABA",src="yahoo",from="2020-02-01",to="2020-06-01")
getSymbols("AMZN",src="yahoo",from="2020-02-01",to="2020-06-01")
head(EDU)
head(AMZN)
head(BABA)
#heatmap
> require(graphics); require(grDevices)
> AMZN_matrix <- data.matrix(AMZN)
> heatmap(AMZN_matrix, Rowv=NA, Colv=NA, col=cm.colors(256), revC=FALSE, scale='column')

> data.matrix(AMZN)
> df <- scale(AMZN)
> result <- dist(df, method = "euclidean")
> result_hc <- hclust(d = result, method = "ward.D2")
> fviz_dend(result_hc, cex = 0.6)