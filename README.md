### cellranger

Container version of the Cellranger single cell analysis pipeline from 10x Geomomics

The raw pipeline is available at: 

https://support.10xgenomics.com/single-cell-gene-expression/software/pipelines/latest/what-is-cell-ranger

Singularity was used as this is a unique container technology allowing to reproduce complete computational anlysis in many different computing resources : 
- HPC (High Power Clusters)
- Cloud (AWS, Google Cloud, Azure...)
- Mac OS (your laptop!)
- Windows (your laptop!)

Singularity is simpler to use and can import containers from other containers formats such as Docker

A tutorial to install Singularity on MacOS or Windows and instructions to run the cellranger container are provided here: https://github.com/YeoLab/cellranger/blob/master/TUTORIAL.ipynb
