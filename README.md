# AMMO Ontology of Finnish Historical Occupations

AMMO core (ammo.ttl) contains SKOS concepts representing Finnish historical occupations that have been found in the source datasets, containing occupational labels from the early 20th century.

## Usage

You can use the Turtle (.ttl) files directly, or use docker to deploy the ontology into a SPARQL endpoint:
`docker build -t ammo . && docker run -p 3059:3030 -d --name ammo ammo`

## Sources

Classification of Finnish Occupations 1980 (coo1980.ttl) contains parts of the occupation hierarchy, and the social classification, related to AMMO occupations, published in Classification of 
occupations 1980 (Ammattiluokitus 1980) by Statistics Finland (Tilastokeskus), http://www.doria.fi/handle/10024/98855 .

HISCO resource labels and hierarchy used with permission from the HISCO database. http://hdl.handle.net/10622/JA9B8O, IISH Dataverse, V1. Described in 
Van Leeuwen, M.H.D., Maas, I., Miles, A.: HISCO: Historical international standard classification of occupations. Leuven University Press (2002). See also the historyofwork.iisg.nl website and 
HISCO book (see: DOI:10.3200/HMTS.37.4.186-197).

HISCLASS classification used with permission from Maas, I., & Van Leeuwen, M. H. (2005). Total and relative endogamy by social origin: A first international comparison of changes in marriage choices 
during the nineteenth century. International review of social History, 50(S13), 275-295. https://doi.org/10.1017/S0020859005002142

HISCAM measures based on Lambert, P. S., Zijdeman, R. L., Van Leeuwen, M. H., Maas, I., & Prandy, K. (2013). The construction of HISCAM: A stratification scale based on social interactions for 
historical comparative research. Historical Methods: A Journal of Quantitative and Interdisciplinary History, 46(2), 77-89. https://doi.org/10.1080/01615440.2012.715569


## Publications

Mikko Koho, Lia Gasbarra, Jouni Tuominen, Heikki Rantala, Ilkka Jokipii and Eero Hyvönen: AMMO Ontology of Finnish Historical Occupations. Proceedings of the The First International Workshop on 
Open Data and Ontologies for Cultural Heritage (ODOCH 19), pp. 91-96, CEUR Workshop Proceedings, Rome, Italy, June, 2019. [PDF](https://seco.cs.aalto.fi/publications/2019/koho-et-al-ammo-2019.pdf)

Lia Gasbarra, Mikko Koho, Ilkka Jokipii, Heikki Rantala and Eero Hyvönen: An Ontology of Finnish Historical Occupations. Proceedings of the 16th Extended Semantic Web Conference (ESWC 2019), 
Posters & demonstrations, Springer, Portoroz, Slovenia, June, 2019. [PDF](https://seco.cs.aalto.fi/publications/2019/gasbarra-et-al-ammo-2019.pdf)

