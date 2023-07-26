#Types of dismissals of batsman in IPL analysis
ipl=data.frame(read.csv("C:/cricket/IPL_ball_by_ball_updated.csv"))
print(ipl)
wkts=aggregate(ipl$wicket_type ,by=list(ipl$wicket_type),FUN=length)
print(wkts)
w=wkts$Group.1[1]="Runs"
print(wkts)
wkt=subset(wkts,Group.1!="Runs")
print(wkt)
barplot(wkt$x,names.arg=wkt$Group.1,xlab="Dismissal type",ylab="No.of wickets",col=c("red","blue","purple","grey","green","violet","black","yellow","pink"),main="Types of dismissals in IPL(2008-2022)")

