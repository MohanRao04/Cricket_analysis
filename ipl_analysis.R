#IPL Most runs Analysis
ipl=data.frame(read.csv("C:/cricket/IPL_ball_by_ball_updated.csv"))      #Importing Dataset
print(ipl)
runs=aggregate(ipl$runs_off_bat,list(ipl$striker),FUN=sum)              #calculating the "total runs" scored in IPL and groupping it by "stiker"
print(runs)
run=subset(runs,Group.1=="RG Sharma")                                   #Checking for total runs scored by R Sharma
print(run)
run=subset(runs,Group.1=="V Kohli")                                     #checking for total runs scored by V kohli
print(run)
most_run=subset(runs,x>5000)                                             #Filtering the results to batsman who has scored runs greater than 5000 
print(most_run)
#Plotting the bar graph of Top runs scorer in IPL with players names being on x-axis and runs on y-axis
barplot(most_run$x,names.arg =most_run$Group.1,xlab="Batsman",ylab="Runs",col=c("#BF0A30","#002868","#FFFF00","#0000FF","#002868","#FFFF00","#BF0A30"),main="Top runs scorer in IPL")  




