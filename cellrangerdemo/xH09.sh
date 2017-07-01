#!/bin/bash

cellranger count \
  --id=xH09 \
  --sample=xH09
  --fastqs=./fastqs \
  --transcriptome=./refdata-cellranger-hg19-1.2.0 \
  --nopreflight \
  --uiport=3600


