from bs4 import BeautifulSoup
import requests
import csv

def scrape_file_links():
    # scrape whole page HTML
    url = 'https://www.nhsbsa.nhs.uk/provider-assurance-dental-pad/clinical-services/snomed-ct'
    page = requests.get(url).text
    
    # find links to SNOMED files
    content = BeautifulSoup(page, features='lxml')
    all_links = [link['href'] for link in content.find_all('a', href = True)]
    snomed_links = [link for link in all_links if '/sites/' in link]
    
    # add start of link to each link
    add = 'https://www.nhsbsa.nhs.uk'
    final_snomed_links = [add + link for link in snomed_links]
    
    # write csv containing urls extracted
    with open('url.csv', 'w') as file:
        write = csv.writer(file)
        write.writerow(final_snomed_links)
        
scrape_file_links()