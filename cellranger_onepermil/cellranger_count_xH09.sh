#!/bin/bash

FASTQSSAMPLENAME=xH09
OUTPUTFOLDERID=xH09
CELLRANGER_REFDATA=/vagrant/cellranger/cellranger_refdata
SPECIES=hg19


cellranger count \
  --id=OUTPUTFOLDERID \
  --sample=FASTQSSAMPLENAME
  --fastqs=../../fastqs \
  --transcriptome=${CELLRANGER_REFDATA}/refdata-cellranger-${SPECIES}-1.2.0 \
  --nopreflight \
  --uiport=3600

