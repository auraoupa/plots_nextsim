#oarsub -I --project data-ocean -t devel -l /nodes=1,core=10,walltime=0:30:00
#oarsub -I --project data-ocean -t fat -l /nodes=1,core=10,walltime=3:30:00
#oarsub -I --project data-ocean -l /nodes=1,core=10,walltime=3:10:00

#on the attributed node
conda activate ice

jupyter notebook --no-browser --port 8383 --notebook-dir=/bettik/alberta/plots_nextsim

ssh -fNL 8383:dahuX:8383   dahu.ciment
lsof -i :8383 #to kill after it's done



