#!/bin/bash

FASTQSSAMPLENAME=xH09
OUTPUTFOLDERID=xH09
REFDATA=../refdata
SPECIES=hg19

cellranger count \
  --id=OUTPUTFOLDERID \
  --sample=FASTQSSAMPLENAME
  --fastqs=./fastqs \
  --transcriptome=${REFDATA}/refdata-cellranger-${SPECIES}-1.2.0 \
  --nopreflight \
  --uiport=3600

