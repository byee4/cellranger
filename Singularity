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

mkdir -p $SINGULARITY_ROOTFS/opt/cellranger
cp -r cellranger/* $SINGULARITY_ROOTFS/opt/cellranger/

mkdir -p $SINGULARITY_ROOTFS/opt/cellranger_onepermil
cp -r cellranger_onepermil/* $SINGULARITY_ROOTFS/opt/cellranger_onepermil/

#mkdir -p $SINGULARITY_ROOTFS/opt/cellranger_refdata
#cp -r cellranger_refdata/* $SINGULARITY_ROOTFS/opt/cellranger_refdata/


cp -r cellranger-2.0.0 $SINGULARITY_ROOTFS/opt/
#cp cellranger-2.0.0.tar.gz $SINGULARITY_ROOTFS/opt/
#cp refdata/refdata-cellranger-ercc92-1.2.0.tar.gz  $SINGULARITY_ROOTFS/opt/

###############################################################################
%files

  #cellranger/cellranger1  /opt/cellranger/
  #cellranger/cellranger2  /opt/cellranger/
  #cellranger/cellranger3  /opt/cellranger/
  #cellranger/cellranger3  /opt/cellranger/

  #cellranger-2.0.0.tar.gz                 /opt/
  #refdata/refdata-cellranger-ercc92-1.2.0.tar.gz  /opt/

###############################################################################
%post
  # this is run inside the container to install all necessary packages

  apt-get install nano unzip zip

  cd /opt
  
#  wget -O cellranger-2.0.0.tar.gz "http://cf.10xgenomics.com/releases/cell-exp/#cellranger-2.0.0.tar.gz?#Expires=1497497891&Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cDovL2NmLjEweGdlbm9taWNzLmNvbS9yZWxlYXNlcy9jZWxsLWV4cC9jZWxscmFuZ2VyLTIuMC4wLnRhci5neiIsIkNvbmRpdGlvbiI6eyJEYXRlTGVzc1RoYW4iOnsiQVdTOkVwb2NoVGltZSI6MTQ5NzQ5Nzg5MX19fV19&Signature=Z-#iXzdziunW5pVDE~ASJIsg44PsW5SuLlE3mCsdgYOVI9ZSQg5tGO4IcmifBp8G8b8zwlC9cTEmNKW6lrLSB60-#gTWdvtZ64f99-ZD51q4ZHsyHgJLvzdO-K6ShOpapf4~67qiMLYWjLYgBCETpS-#jEgSeVgu9JK5miswldGyzCH4xMTnPImHNlQxwAoH6R-LHHbDA0cjbAvMUN-4BUAivaTdRWk-#RPjOx~DiqimU~p0oYVLpslq7Kcrp25M1rB~YDrviL04ni9CdvHELFVYpAqsLCzeqfpOL9VEgypmUDVTcYfka0H9ZxXyVwir8lWr7Kwih~FO8jzkvUhTEil4hA__&Key-#Pair-Id=APKAI7S6A5RYOXBWRPDA"
#  wget -O cellranger-2.0.0.tar.gz "http://cf.10xgenomics.com/releases/cell-exp/cellranger-2.0.0.tar.gz?Expires=1497583737&Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cDovL2NmLjEweGdlbm9taWNzLmNvbS9yZWxlYXNlcy9jZWxsLWV4cC9jZWxscmFuZ2VyLTIuMC4wLnRhci5neiIsIkNvbmRpdGlvbiI6eyJEYXRlTGVzc1RoYW4iOnsiQVdTOkVwb2NoVGltZSI6MTQ5NzU4MzczN319fV19&Signature=Ga5jFJGZEdoX5eAJIf28dzYKh7xmrtDenjOUVGn5OiTcMEvk4HUgISKc3d3DcI3JunyD-~GcSbnCF5HMn2v-ahLjgDJ0h-qpeaxtqcDlDVu-FvDobaYXTsNOvKBk45gPioyBgmxH97VH1i3npMA49OUP6adA2MaEa0KrCoeJ0zwGdGhvB4BQtrKGRboYifkIxYlJbL18c7YKVIjQTcUpGif8fx05XbIV23-QDkWXKuSweYb7RHQ8ixhurbBKpn7ffCoZyawHBGVakFx1mUgqgjLw1gkcXcVCB9ew~InTbFuTq4~Z7Z-LvLMckactTFXVj2~xKTkofEpsCC5HbTrIyw__&Key-Pair-Id=APKAI7S6A5RYOXBWRPDA"
#   wget -O cellranger-2.0.0.tar.gz "http://cf.10xgenomics.com/releases/cell-exp/cellranger-2.0.0.tar.gz?Expires=1498882550&Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cDovL2NmLjEweGdlbm9taWNzLmNvbS9yZWxlYXNlcy9jZWxsLWV4cC9jZWxscmFuZ2VyLTIuMC4wLnRhci5neiIsIkNvbmRpdGlvbiI6eyJEYXRlTGVzc1RoYW4iOnsiQVdTOkVwb2NoVGltZSI6MTQ5ODg4MjU1MH19fV19&Signature=i3ON20btwZjfUjRm8r3s2lwJD96YQcMf6D8OXjs6Jfo-PeVuhx76US~3QglYZl9yptET4txoLvF8bebRnD~L29mZTqSAdiH95WM4Sk9LzTYlmbnJz8LKJYEHQh8eRbxxk5xqgT~8nyL1bsZzolmQgkgzjbjO~1~uMzX5LvFpxSoOQMKu3BKuVejqUgNxq0zp0BDbcVgMMpb0dp~AACNye4D6GOGr-WP-vD~Gr85G2QqLn7lyP1WqPY4otuRK6vV6AHCydHE5HW96cpPfx9Ov2btYKmswVRhmgD78Kk0QOEFBka5kGGeoUW8-aOASaENghhiG9ZTk8gw59I5KKzk-fw__&Key-Pair-Id=APKAI7S6A5RYOXBWRPDA"
#  wget -O cellranger-2.0.0.tar.gz   http://cf.10xgenomics.com/releases/cell-exp/cellranger-2.0.0.tar.gz?Expires=1498882550&Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cDovL2NmLjEweGdlbm9taWNzLmNvbS9yZWxlYXNlcy9jZWxsLWV4cC9jZWxscmFuZ2VyLTIuMC4wLnRhci5neiIsIkNvbmRpdGlvbiI6eyJEYXRlTGVzc1RoYW4iOnsiQVdTOkVwb2NoVGltZSI6MTQ5ODg4MjU1MH19fV19&Signature=i3ON20btwZjfUjRm8r3s2lwJD96YQcMf6D8OXjs6Jfo-PeVuhx76US~3QglYZl9yptET4txoLvF8bebRnD~L29mZTqSAdiH95WM4Sk9LzTYlmbnJz8LKJYEHQh8eRbxxk5xqgT~8nyL1bsZzolmQgkgzjbjO~1~uMzX5LvFpxSoOQMKu3BKuVejqUgNxq0zp0BDbcVgMMpb0dp~AACNye4D6GOGr-WP-vD~Gr85G2QqLn7lyP1WqPY4otuRK6vV6AHCydHE5HW96cpPfx9Ov2btYKmswVRhmgD78Kk0QOEFBka5kGGeoUW8-aOASaENghhiG9ZTk8gw59I5KKzk-fw__&Key-Pair-Id=APKAI7S6A5RYOXBWRPDA


#  wget wget -O cellranger-2.0.0.tar.gz "http://cf.10xgenomics.com/releases/cell-exp/cellranger-2.0.0.tar.gz?Expires=1498884401&Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cDovL2NmLjEweGdlbm9taWNzLmNvbS9yZWxlYXNlcy9jZWxsLWV4cC9jZWxscmFuZ2VyLTIuMC4wLnRhci5neiIsIkNvbmRpdGlvbiI6eyJEYXRlTGVzc1RoYW4iOnsiQVdTOkVwb2NoVGltZSI6MTQ5ODg4NDQwMX19fV19&Signature=XXAmQ-kR~g~QuQnxU3AU6spcFYmXCSMMp0AUYET1a6gIq~~yaDmbe0vzcQdUtHZkDEo8~QezvKLeCVQ77IaqTaPUZd1rvdVVbmZ6bjy~St3fWcRoMOD1Pml6qpH-t7KG18z~eGnkBdCC8P7LC68grTIKsKfr8ipE1-5JTTntFN39vHpCZKOUgTp1qG6YuKMVOBMcq3Nt9dr3LScRoioPTHulAdFWTcG0V~5HQDgzwWlHiT-LIUL-ndhLBPh~hTbr8kOSbwLssO-hR1VNzvzbC6XA9vjst6CxDYj4cK4snrLZLxgXmwVK9zKqE2VjRpdWZMA-itAeelgjZp9c3x~q3g__&Key-Pair-Id=APKAI7S6A5RYOXBWRPDA"
#  tar -xzvf cellranger-2.0.0.tar.gz
#  rm cellranger-2.0.0.tar.gz



  #ln -s /opt/cellranger-2.0.0/cellranger-tiny-ref/1.2.0   /opt/cellranger_refdata/refdata-cellranger-tiny-ref-1.2.0


  #wget http://cf.10xgenomics.com/supp/cell-exp/refdata-cellranger-GRCh38-1.2.0.tar.gz
  #tar -xzvf refdata-cellranger-GRCh38-1.2.0.tar.gz

  #wget http://cf.10xgenomics.com/supp/cell-exp/refdata-cellranger-hg19-1.2.0.tar.gz
  #tar -xzvf refdata-cellranger-hg19-1.2.0.tar.gz
  #rm refdata-cellranger-hg19-1.2.0.tar.gz

  #wget-http://cf.10xgenomics.com/supp/cell-exp/refdata-cellranger-mm10-1.2.0.tar.gz
  #tar -xzvf refdata-cellranger-hg19-1.2.0.tar.gz

  #wget http://cf.10xgenomics.com/supp/cell-exp/refdata-cellranger-hg19-and-mm10-1.2.0.tar.gz
  #tar -xzvf refdata-cellranger-hg19-and-mm10-1.2.0.tar.gz

  #wget http://cf.10xgenomics.com/supp/cell-exp/refdata-cellranger-ercc92-1.2.0.tar.gz
  #tar -xzvf refdata-cellranger-ercc92-1.2.0.tar.gz
  #rm refdata-cellranger-ercc92-1.2.0.tar.gz


  #wget http://cf.10xgenomics.com/supp/cell-exp/chromium-shared-sample-indexes-plate.json
  #wget http://cf.10xgenomics.com/supp/cell-exp/chromium-shared-sample-indexes-plate.csv


  pwd
  ls -la
  
  cd -


###############################################################################
%labels

MAINTAINER adomissy@ucsd.edu
VERSION 0.0.1
BUILD_DATE 20170630


###############################################################################
%environment

  PATH="/opt/conda/bin:/usr/local/bin:/usr/bin:/bin:"
  PATH=/opt/cellranger:$PATH
  PATH=/opt/cellranger-2.0.0:$PATH
  PATH=/vagrant/cellranger/cellranger-2.0.0:$PATH
  export PATH

  CELLRANGER_REFDATA=/vagrant/cellranger/cellranger_refdata
  export CELLRANGER_REFDATA


###############################################################################
%runscript
  # this will get copied to /.singularity.d/runscript indide the container
  # which will run whenever the container is called as an executable

  #####!/usr/bin/env bash
  echo "Arguments received: $*"
  exec /usr/bin/python "$@"
  
  $@


###############################################################################
%test
  # this will be run once upon completion of container building
  #
  #/opt/test.sh
  #

  # cellranger sitecheck > sitecheck.txt
  # cellranger testrun --id=tiny
  
