afl_scraper <- function(season_1, season_2) {
  library(rvest)
  library(httr)
  library(dplyr)
  library(stringr)
  library(tidyr)
  
  first_part_url <- "http://afltables.com/afl/seas/"
  seasons <- season_1:season_2
  
  all_data <- tibble(
      team1 = as.character(),
      team2 = as.character(), 
      t1_ql = as.character(), 
      t1_q2 = as.character(), 
      t1_q3 = as.character(), 
      t1_q4 = as.character(), 
      t2_ql = as.character(), 
      t2_q2 = as.character(), 
      t2_q3 = as.character(), 
      t2_q4 = as.character(), 
      team1_score as numeric(),
      team2_score as numeric(),
      match_facts = as.character(), 
      umpires = as.character(), 
      home_mediaN_experience = as.numeric(), 
      home_mean_experience = as.numeric(), 
      home_300 = as.numeric(), 
      home_milestone = as.numeric(), 
      away_mediaN_experience = as.numeric(), 
      away_mean_experience = as.numeric(), 
      away_300 = as.numeric(), 
      away_milestone = as.numeric()
  )
  
      
      