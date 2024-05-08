# DentalSNOMED

Download [published NHSBSA dental SNOMED codes](https://www.nhsbsa.nhs.uk/provider-assurance-dental-pad/clinical-services/snomed-ct) and collate into a single table with a column indicating which source file they came from.

## Usage

1. download_files.R: downloads the published files and saves them locally. Requires a folder called 'Data' in the working directory.
2. append_tables.R: adds a column to each table with the name of the origin file then combines the tables and saves output as a csv. Requires a folder called 'Data' in the working directory.
