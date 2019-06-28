# library(hmdbQuery)
# 
# temp.met = HmdbEntry(prefix = "http://www.hmdb.ca/metabolites/", 
#                 id = "HMDB0000002")
# 
# 
# compound.name <- temp.met@metabolite
# # Diseases <- temp.met@diseases
# HMDB.ID <- temp.met@id
# Biospecimens <- temp.met@biospecimens
# Tissue <- temp.met@tissues
# Store <- temp.met@store
# store.name <- names(Store)
# Store <- matrix(Store, nrow = 1)
# colnames(Store) <- store.name
# # Store[,1] <- unlist(Store[,1])
# Store[,6] <- paste(unname(unlist(Store[,6])), collapse = ";")
# Store[,9] <- paste(unname(unlist(Store[,9])), collapse = ";")
# taxonomy <- Store[,19][[1]]
# 
# taxonomy <- unlist(lapply(taxonomy, function(x) paste(x, collapse = ";")))
# taxonomy.name <- names(taxonomy)
# taxonomy <- matrix(taxonomy, nrow = 1)
# colnames(taxonomy) <- taxonomy.name
# taxonomy <- as.data.frame(taxonomy)
# 
# ontology <- Store[,20][[1]]
# # physiological.effect <- ontology[[1]]
# # lapply(physiological.effect$descendants, function(x)x$descendants)
# term <- unname(unlist(lapply(ontology, function(x){
#   x$term
# })))
# 
# disposition <- ontology[[which(term == "Disposition")]]
# disposition <- disposition$descendants$descendant$descendants
# term2 <- lapply(disposition, function(x))
# source <- lapply(disposition, function(x) x$term)
# # process <- ontology[[3]]
# # role <- ontology[[4]]
# 
# 
# 
# lapply(ontology, function(x){
#   
# })
