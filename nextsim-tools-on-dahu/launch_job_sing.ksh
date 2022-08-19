#oarsub -I --project data-ocean -t devel -l /nodes=1,core=10,walltime=0:30:00
#oarsub -I --project data-ocean -l /nodes=1,core=10,walltime=3:10:00

#on the attributed node

source env_dahu_plots.src
/usr/local/bin/singularity shell $NEXTSIM_IMAGE_NAME

#in singularity prompt


jupyter notebook --no-browser --port 8383 --notebook-dir=/tools



