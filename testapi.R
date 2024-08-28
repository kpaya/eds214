library(httr)
library(purrr)

r<-GET("https:///api.github.com/users/kpaya/repos")

my_repos_list<-content(r)
my_repos<-map_chr(my_repos_list, "full_name")

my_repos