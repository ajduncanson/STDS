install.packages("gmapsdistance")
library(gmapsdistance)

#just expanding on @moonjeremy's code, with extra arguments

results = gmapsdistance(
  #use a vector of origins and a vector of destinations and ask for all combinations
  #can use lat/long, which may facilitate creating lots of points
          origin = c("UTS+Building+11+Ultimo+NSW","-33.883013,151.149366"), 
          destination = c("Central+Station+Sydney+NSW","Hornsby+Station+Hornsby+NSW","Parramatta+Station+Parramatta+NSW"), 
          combinations = "all",
          mode = "driving", 
  #best guess... or can ask for optimistic or pessimistic
          traffic_model = "best_guess",
          dep_date = "2017-08-27",
          dep_time = "08:00:00",
          shape = "long",
  #all the interesting arguments need an API key from https://developers.google.com/maps/documentation/distance-matrix/
  #and you can run 2500 individual origin-destination pairs per day for free, then it's 50 US cents per 1000
  #best go get your own and have a play
          key = "")

results
