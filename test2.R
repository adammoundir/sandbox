test2

Test3
library(tidyverse)
library(rvest)
library(httr)
install.packages('usethis')
usethis::create_github_token()

browseURL('https://revendo.com/de-ch/robots.txt')
browseURL('https://www.jusit.ch/robots.txt')
download.file('https://revendo.com/de-ch/')
download.file(url = 'https://revendo.com/de-ch/', destfile = 'test.html')

url <- 'https://revendo.com/de-ch/kaufen/k/iphone/'

read_html(url) %>% 
  html_elements(css = '.price , .product-name') %>% 
  html_text()

urluni <- 'https://www.unilu.ch/'

page <- read_html(urluni)

page2 <- httr::GET(url = 'https://www.unilu.ch/')
page3 <- content(page2)
install.packages('jsonlite')
library(jsonlite)


revendo <- GET(url = 'www.revendo.ch')

cnt <- content(revendo)
