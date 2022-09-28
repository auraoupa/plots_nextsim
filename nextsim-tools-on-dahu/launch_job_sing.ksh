#oarsub -I --project data-ocean -t devel -l /nodes=1,core=10,walltime=0:30:00
#oarsub -I --project data-ocean -l /nodes=1,core=10,walltime=3:10:00

oarsub -I --project data-ocean -t fat -l /nodes=1,core=10,walltime=3:30:00


#on the attributed node

cd /bettik/alberta/plots_nextsim/nextsim-tools-on-dahu
source env_dahu_plots.src
/usr/local/bin/singularity shell $NEXTSIM_IMAGE_NAME

#in singularity prompt


jupyter notebook --no-browser --port 8383 --notebook-dir=/tools
jupyter notebook --no-browser --port 8383 --notebook-dir=/output

#tunnel from local machine

ssh -fNL 8383:dahu34:8383   dahu.ciment
ssh -fNL 8383:dahu-fat1:8383   dahu.ciment
lsof -i :8383


