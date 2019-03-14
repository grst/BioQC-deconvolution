#!/usr/bin/env Rscript

library(ribiosAnnotation)
library(readr)
library(ribiosIO)
library(Biobase)
source("lib/lib.R")
source("lib/geo_annotation.R")

load("./data/GSE24207.Rdata")
eset = attachOrthologousSymbols(eset)
save(eset, file="data/GSE24207_annot.Rdata")

write_tsv(fData(eset), 'data/GSE24207_fdata.tsv')
write_gct(exprs(eset), file='data/GSE24207_exprs.gct')
write_tsv(pData(eset), 'data/GSE24207_pdata.tsv')
