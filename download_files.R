url <- c("https://www.nhsbsa.nhs.uk/sites/default/files/2021-07/DENT_ORAL_SURG_1.1_ClusterMembers_SCT_MIBO_20190315165859.txt", 
         "https://www.nhsbsa.nhs.uk/sites/default/files/2023-04/DENT_PROCEDURES_1.1_ClusterMembers_SCT_MIBO_20190315164425.txt", 
         "https://www.nhsbsa.nhs.uk/sites/default/files/2023-04/DENT_PROCEDURES_BY_TOOTH_1.1_ClusterMembers_SCT_MIBO_20190315163708.txt", 
         "https://www.nhsbsa.nhs.uk/sites/default/files/2021-07/DENT_TOOTH_DECID_1.1_ClusterMembers_SCT_MIBO_20190315161152.txt", 
         "https://www.nhsbsa.nhs.uk/sites/default/files/2021-07/DENT_TOOTH_PERM_1.1_ClusterMembers_SCT_MIBO_20190315162221.txt", 
         "https://www.nhsbsa.nhs.uk/sites/default/files/2021-07/DENT_TOOTH_SUPER_1.1_ClusterMembers_SCT_MIBO_20190315162700.txt", 
         "https://www.nhsbsa.nhs.uk/sites/default/files/2021-07/DENT_TOOTH_SURFACE_1.1_ClusterMembers_SCT_MIBO_20190315163329.txt")

dest <- c("Data/oral_surgery.txt", 
          "Data/procedures.txt", 
          "Data/procedures_by_tooth.txt", 
          "Data/tooth_deciduous.txt", 
          "Data/tooth_permanent.txt", 
          "Data/tooth_supernumerary.txt", 
          "Data/tooth_surface.txt")

for (i in seq_along(url)){
  download.file(url[i], dest[i], mode = "wb")
}
