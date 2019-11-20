library(xlsx)
install.packages("pheatmap")
library(pheatmap)

data201807062<-"RNA-seq coH2.xlsx"
dataframe07062<-read.xlsx(data201807062,1)
pheatmap::pheatmap(dataframe07062[c(3:22)],
color = colorRampPalette(c("blue", "white", "red"))(100),
scale="row",
cluster_rows=FALSE,
cluster_cols=FALSE,
cellwidth=10,
cellheight=10,
gaps_row=c(19),
gaps_col=c(5,10,15),
labels_row = dataframe07062$Symbol,
labels_col = c("","","A","","","","","coH.A","","","","","coH.C","","","","","C","",""),
width = 10,
legend=FALSE,
filename="pheatmap_07062.tiff")
