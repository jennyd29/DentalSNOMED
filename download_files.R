# URLs of text files to download
url <- read.csv('url.csv')

# destination to download text files to
dest <- c("Data/oral_surgery.txt", 
          "Data/procedures.txt", 
          "Data/procedures_by_tooth.txt", 
          "Data/tooth_deciduous.txt", 
          "Data/tooth_permanent.txt", 
          "Data/tooth_supernumerary.txt", 
          "Data/tooth_surface.txt")

# download each file in url and saved to corresponding location in dest
for (i in seq_along(url)){
  download.file(url[i], dest[i], mode = "wb")
}
