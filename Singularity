BootStrap: docker
From: continuumio/miniconda:4.3.11

# this would include the CMD line from the dockerfile
# ( here: CMD [ "/bin/bash" ] ) as the %runscript
# IncludeCmd: yes




###############################################################################
%setup
  # this is run from outside the container to start setting it up

  echo "Looking in directory '$SINGULARITY_ROOTFS' for /bin/sh"
  if [ ! -x "$SINGULARITY_ROOTFS/bin/sh" ]; then
      echo "Hrmm, this container does not have /bin/sh installed..."
      exit 1
  fi

mkdir -p $SINGULARITY_ROOTFS/oasis/tscc/scratch
mkdir -p $SINGULARITY_ROOTFS/projects/ps-yeolab
mkdir -p $SINGULARITY_ROOTFS/projects/ps-yeolab3
mkdir -p $SINGULARITY_ROOTFS/projects/ps-scrm
mkdir -p $SINGULARITY_ROOTFS/oasis/projects/nsf
mkdir -p $SINGULARITY_ROOTFS/media/mis

cp -r bin              $SINGULARITY_ROOTFS/opt/
cp -r demo             $SINGULARITY_ROOTFS/opt/
cp -r cellranger-2.0.0 $SINGULARITY_ROOTFS/opt/

#cp cellranger-2.0.0.tar.gz $SINGULARITY_ROOTFS/opt/
#cp refdata/refdata-cellranger-ercc92-1.2.0.tar.gz  $SINGULARITY_ROOTFS/opt/

###############################################################################
%files

  # cellranger-2.0.0.tar.gz                 /opt/

###############################################################################
%post
  # this is run inside the container to install all necessary packages

  #apt-get install nano unzip zip

  #  cd /opt
  # wget wget -O cellranger-2.0.0.tar.gz "http://cf.10xgenomics.com/releases/cell-exp/cellranger-2.0.0.tar.gz?Expires=1498884401&Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cDovL2NmLjEweGdlbm9taWNzLmNvbS9yZWxlYXNlcy9jZWxsLWV4cC9jZWxscmFuZ2VyLTIuMC4wLnRhci5neiIsIkNvbmRpdGlvbiI6eyJEYXRlTGVzc1RoYW4iOnsiQVdTOkVwb2NoVGltZSI6MTQ5ODg4NDQwMX19fV19&Signature=XXAmQ-kR~g~QuQnxU3AU6spcFYmXCSMMp0AUYET1a6gIq~~yaDmbe0vzcQdUtHZkDEo8~QezvKLeCVQ77IaqTaPUZd1rvdVVbmZ6bjy~St3fWcRoMOD1Pml6qpH-t7KG18z~eGnkBdCC8P7LC68grTIKsKfr8ipE1-5JTTntFN39vHpCZKOUgTp1qG6YuKMVOBMcq3Nt9dr3LScRoioPTHulAdFWTcG0V~5HQDgzwWlHiT-LIUL-ndhLBPh~hTbr8kOSbwLssO-hR1VNzvzbC6XA9vjst6CxDYj4cK4snrLZLxgXmwVK9zKqE2VjRpdWZMA-itAeelgjZp9c3x~q3g__&Key-Pair-Id=APKAI7S6A5RYOXBWRPDA"
  #  tar -xzvf cellranger-2.0.0.tar.gz
  # rm cellranger-2.0.0.tar.gz

  # ln -s /opt/cellranger-2.0.0/cellranger-tiny-ref/1.2.0   /opt/cellranger_refdata/refdata-cellranger-tiny-ref-1.2.0
  
  # wget http://cf.10xgenomics.com/supp/cell-exp/chromium-shared-sample-indexes-plate.json
  # wget http://cf.10xgenomics.com/supp/cell-exp/chromium-shared-sample-indexes-plate.csv

  #  cd -

###############################################################################
%labels

MAINTAINER adomissy@ucsd.edu
VERSION 0.0.1
BUILD_DATE 20170701

###############################################################################
%environment

  PATH=/opt/conda/bin:/usr/local/bin:/usr/bin:/bin
  PATH=/opt/bin:$PATH
  PATH=/opt/cellranger-2.0.0:$PATH
  export PATH

  REFDATA=./
  export REFDATA

###############################################################################
%runscript
  # this will get copied to /.singularity.d/runscript indide the container
  # which will run whenever the container is called as an executable
  set -x
  #####!/usr/bin/env bash
  #echo "command: $0"
  #echo first argument: $1
  #echo second argument: $2
  #echo "arguments: $@"

  SUBCOMMAND="$1"
  
  if [ $SUBCOMMAND = "getrefdata" ]
  then
    /opt/bin/getrefdata $2
  elif [ $SUBCOMMAND = "getdemo" ]
  then
    /opt/bin/getdemo
  else
    #/opt/cellranger-2.0.0/cellranger $@
    #cellranger $@
    PREVIOUSPS1=$PS1
    PS1=SINGULARITY":"$SINGULARITY_CONTAINER":"$PS1
    bash
    PS1=$PREVIOUSPS1
  fi

###############################################################################
%test
  # this will be run once upon completion of container building
  #
  #/opt/test.sh
  #

  # cellranger sitecheck > sitecheck.txt
  # cellranger testrun --id=tiny
  
