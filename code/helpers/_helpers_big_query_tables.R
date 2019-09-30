# derived from Rodrigo's code

# This script defines some objects containing the information
# necessary to connect to each of the BQ tables.

tableInfo <- function(dataset="GTEx_V8_ElasticNet_EUR_2018_07_05", table="predixcan_results", project="gtex-awg-im") {
  info <- list()
  info$project <- project
  info$dataset_name <- dataset
  info$table_name <- table
  # add column names here?
  info
}

########################## DEFINITION OF BigQuery TABLES ########################

# elastic net models and gene-level associations
gwas_tbl <-                         tableInfo("GWAS_all", "gwas")
gwas_tbl_count <-                   tableInfo("GWAS_all", "gwas_results_count")
gwas_formatted_tbl <-               tableInfo("GWAS_all", "formatted_gwas")
gwas_imputation_verification_tbl <- tableInfo("GWAS_all", "gwas_imputation_verification")

prediction_models_tbl_eqtl <-       tableInfo("GTEx_V8_ElasticNet_EUR_v1", "weights_eqtl")
prediction_models_extra_tbl_eqtl <- tableInfo("GTEx_V8_ElasticNet_EUR_v1", "extra_eqtl")

prediction_models_tbl_sqtl <-       tableInfo("GTEx_V8_ElasticNet_EUR_v1", "weights_sqtl")
prediction_models_extra_tbl_sqtl <- tableInfo("GTEx_V8_ElasticNet_EUR_v1", "extra_sqtl")

predixcan_tbl_eqtl <-               tableInfo("GTEx_V8_ElasticNet_EUR_v1", "spredixcan_eqtl")
predixcan_tbl_count_eqtl <-         tableInfo("GTEx_V8_ElasticNet_EUR_v1", "spredixcan_eqtl_count")

predixcan_tbl_sqtl <-               tableInfo("GTEx_V8_ElasticNet_EUR_v1", "spredixcan_sqtl")
predixcan_tbl_count_sqtl <-         tableInfo("GTEx_V8_ElasticNet_EUR_v1", "spredixcan_sqtl_count")

multixcan_tbl_eqtl <-               tableInfo("GTEx_V8_ElasticNet_EUR_v1", "smultixcan_eqtl")
multixcan_tbl_count_eqtl <-         tableInfo("GTEx_V8_ElasticNet_EUR_v1", "smultixcan_eqtl_count")

multixcan_tbl_sqtl <-               tableInfo("GTEx_V8_ElasticNet_EUR_v1", "smultixcan_sqtl")
multixcan_tbl_count_sqtl <-         tableInfo("GTEx_V8_ElasticNet_EUR_v1", "smultixcan_sqtl_count")

# conditional analysis (LDACC)
CA_eqtl_tbl <- tableInfo("GTEx_V8_ConditionalAnalysis_2018_10_05", "eqtl_analysis")
CA_gwas_tbl <- tableInfo("GTEx_V8_ConditionalAnalysis_2018_10_05", "gwas_results")
CA_eqtl_and_gwas_tbl <- tableInfo("GTEx_V8_ConditionalAnalysis_2018_10_05", "gwas_and_eqtl")

# DAPG
DAPG_eqtl_tbl <- tableInfo("GTEx_V8_DAPG_2018_10_05", "eqtl_analysis")
DAPG_gwas_tbl <- tableInfo("GTEx_V8_DAPG_2018_10_05", "gwas_results")
DAPG_eqtl_and_gwas_tbl <- tableInfo("GTEx_V8_DAPG_2018_10_05", "gwas_and_eqtl")

# colocalization results
coloc_tbl_eqtl <- tableInfo("GTEx_V8_COLOC", "coloc_with_enloc_priors")
enloc_tbl_eqtl <- tableInfo("GTEx_V8_ENLOC", "enloc_all_results")
enloc_tbl_eqtl_eur <- tableInfo("GTEx_V8_ENLOC_v1", "enloc_eqtl_eur")
enloc_tbl_sqtl_eur <- tableInfo("GTEx_V8_ENLOC_v1", "enloc_sqtl_eur")

# annotations and other metadata
ensembl_collapsed_annotations_tbl <-  tableInfo("annotations", "ensembl_collapsed")
gene_essentiality_annotation_tbl <-   tableInfo("annotations", "human_gene_essentiality_scores")
gencode_all_annotation_tbl <-         tableInfo("annotations", "gencode_v26_all")
gencode_annotation_tbl <-             tableInfo("annotations", "gencode_v26")
intron_annotation_tbl <-              tableInfo("annotations", "introns")
gtex_sample_size_tbl <-               tableInfo("annotations", "sample_size")
gwas_metadata_tbl <-                  tableInfo("GTEx_V8_metadata", "gwas_metadata")
trait_metadata_tbl <-                 tableInfo("GTEx_V8_metadata", "phenotype_classes_colors")
gtex_tissue_metadata_tbl <-           tableInfo("GTEx_V8_metadata", "gtex_tissue_metadata")

# miscellaneous
ld_independent_regions_tbl <-   tableInfo("miscellaneous", "ld_independent_regions")
ld_independent_regions_2_tbl <- tableInfo("annotations", "ld_independent_regions_2")
gwas_catalog_tbl <-             tableInfo("miscellaneous", "gwas_catalog_v102")